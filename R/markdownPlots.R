#' Multiple Markdown plots
#'
#' Supports using a named `list` containing multiple `ggplot` objects, which
#' can be used in an R Markdown report, separated by headers. Internally, the
#' headers are generated with the `markdownHeader` function.
#'
#' @note Updated 2021-02-04.
#' @export
#'
#' @inheritParams AcidRoxygen::params
#' @param list `list`.
#' Named list containing `ggplot` objects.
#'
#' @return Graphical output of plots.
#' Separated by Markdown headers.
#'
#' @seealso
#' Examples taken from:
#' https://bookdown.org/rdpeng/exdata/the-base-plotting-system-1.html
#'
#' @examples
#' ## Base R plotting example.
#' data(airquality, package = "datasets")
#' p1 <- hist(airquality[["Ozone"]], plot = FALSE)
#' p2 <- hist(airquality[["Wind"]], plot = FALSE)
#' list <- list("ozone" = p1, "wind" = p2)
#' markdownPlots(list = list)
markdownPlots <-
    function(list, headerLevel = 2L) {
        assert(
            is.list(list),
            hasNames(list),
            isHeaderLevel(headerLevel)
        )
        invisible(mapply(
            name = names(list),
            plot = list,
            MoreArgs = list(headerLevel = headerLevel),
            FUN = function(name, plot, headerLevel) {
                assert(isString(name))
                markdownHeader(name, level = headerLevel, asis = TRUE)
                plot(plot)
            },
            SIMPLIFY = FALSE
        ))
    }



#' @rdname markdownPlots
#' @usage NULL
#' @export
mdPlots <- markdownPlots
