#' @name markdownPlots
#' @inherit AcidGenerics::markdownPlots
#' @note Updated 2022-05-24.
#'
#' @details
#' Supports using a named `list` containing multiple `ggplot` objects, which
#' can be used in an R Markdown report, separated by headers. Internally, the
#' headers are generated with the `markdownHeader` function.
#'
#' @inheritParams AcidRoxygen::params
#' @param ... Additional arguments.
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
#' markdownPlots(list)
NULL



## Updated 2022-05-24.
`markdownPlots,list` <-
    function(object, headerLevel = 2L) {
        assert(
            hasLength(object),
            hasNames(object),
            isHeaderLevel(headerLevel)
        )
        invisible(Map(
            name = names(object),
            plot = object,
            MoreArgs = list("headerLevel" = headerLevel),
            f = function(name, plot, headerLevel) {
                assert(isString(name))
                markdownHeader(name, level = headerLevel, asis = TRUE)
                plot(plot)
            }
        ))
    }



#' @rdname markdownPlots
#' @export
setMethod(
    f = "markdownPlots",
    signature = signature(object = "list"),
    definition = `markdownPlots,list`
)
