#' @name markdownTables
#' @inherit AcidGenerics::markdownTables
#' @note Updated 2022-05-24.
#'
#' @details
#' `knitr::kable()` now supports multiple tables as a `list` for the `x`
#' argument, but it still only supports a single caption. `markdownTables`
#' extends this functionality, but supporting captions for each table.
#'
#' @inheritParams AcidRoxygen::params
#' @param ... Additional arguments.
#'
#' @param force `logical(1)`.
#' Force knit output using `knitr::asis_output()`.
#' *Recommended for development and unit testing only.*
#'
#' @return
#' - knit call: `asis_output`
#' - Otherwise: `list`.
#'
#' @seealso
#' - `knitr::kable()`.
#' - [Stack Overflow post](https://stackoverflow.com/a/35149103/3911732).
#'
#' @examples
#' list <- list(
#'     "iris" = head(datasets::iris),
#'     "mtcars" = head(datasets::mtcars)
#' )
#' captions <- c(
#'     "iris" = "Edgar Anderson's iris data",
#'     "mtcars" = "Motor Trend car road tests"
#' )
#' markdownTables(list, captions = captions)
NULL



## Updated 2022-05-24.
`markdownTables,list` <- # nolint
    function(object,
             captions = NULL,
             force = FALSE) {
        assert(
            requireNamespace("knitr", quietly = TRUE),
            hasLength(object),
            isAny(captions, classes = c("character", "NULL"))
        )
        if (is.null(captions)) {
            assert(hasNames(list))
            captions <- names(list)
        }
        assert(
            isCharacter(captions),
            areSameLength(object, captions),
            isFlag(force)
        )
        output <- knitr::opts_knit[["get"]]("rmarkdown.pandoc.to")
        if (!is.null(output) || isTRUE(force)) {
            tables <- Map(
                x = object,
                caption = captions,
                f = function(x, caption) {
                    knitr::kable(x = as.data.frame(x), caption = caption)
                }
            )
            knitr::asis_output(tables)
        } else {
            ## Return the unmodified list if not in a knit call.
            object
        }
    }



#' @rdname markdownTables
#' @export
setMethod(
    f = "markdownTables",
    signature = signature(object = "list"),
    definition = `markdownTables,list`
)
