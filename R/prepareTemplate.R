## We're covering the code below in bcbioRNASeq and bcbioSingleCell.
## nocov start



#' Prepare R Markdown template
#'
#' If the required template dependency files aren't present, copy them from the
#' requested package. Existing files are not overwritten by default. This
#' function will copy dependency files from a requested package inside the
#' `rmarkdown/shared/` directory. If a package doesn't contain this
#' subdirectory, the function will return an error.
#'
#' @note Updated 2023-09-28.
#' @export
#'
#' @param package `character(1)` or `NULL`.
#' Name of package containing the R Markdown template. If `NULL`, only the
#' basic shared files defined in the basejump package will be copied.
#'
#' @param overwrite `logical(1)`.
#' Should existing destination files be overwritten?
#'
#' @return Invisible `logical`.
#' Was the file copied?.
#'
#' @examples
#' ## RNA-seq template.
#' ## > prepareTemplate(package = "bcbioRNASeq")
#'
#' ## Single-cell RNA-seq template.
#' ## > prepareTemplate(package = "bcbioSingleCell")
prepareTemplate <- function(package = NULL, overwrite = FALSE) {
    assert(
        requireNamespace("utils", quietly = TRUE),
        isString(package, nullOk = TRUE),
        isFlag(overwrite)
    )
    files <- character()
    copySharedFiles <- function(sourceDir, overwrite) {
        assert(isADirectory(sourceDir))
        files <- sort(list.files(sourceDir, full.names = TRUE))
        assert(hasLength(files))
        copied <- vapply(
            X = files,
            FUN = function(file) {
                file.copy(
                    from = file,
                    to = basename(file),
                    overwrite = overwrite
                )
            },
            FUN.VALUE = logical(1L)
        )
        names(copied) <- basename(files)
        copied
    }
    ## Copy the shared files from the requested package, if necessary.
    if (!is.null(package)) {
        assert(isInstalled(package))
        sourceDir <- system.file(
            "rmarkdown", "shared",
            package = package, mustWork = TRUE
        )
        copied <- copySharedFiles(sourceDir, overwrite = overwrite)
        files <- c(files, copied)
    }
    ## Copy the shared files from the package. Define this step second in case
    ## there are files in the desired package that are duplicated here, and
    ## which we don't necessarily want to overwrite by default.
    sourceDir <- system.file(
        "rmarkdown", "shared",
        package = utils::packageName(), mustWork = TRUE
    )
    copied <- copySharedFiles(sourceDir, overwrite = overwrite)
    files <- c(files, copied)
    invisible(files)
}



## nocov end
