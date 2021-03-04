## Acid Genomics shared R setup script.
## Last updated 2021-03-04.
##
## This file is defined inside the AcidMarkdown package:
## > system.file(
## >     "rmarkdown",
## >     "shared",
## >     "_setup.R",
## >     package = "AcidMarkdown"
## > )
##
## If you encounter any problems with this configuration or have suggestions
## for improvement, please file an issue here:
## https://github.com/acidgenomics/r-acidmarkdown/issues

## Set seed for reproducibility. Using Fibonacci sequence.
set.seed(1123581321L)

## Set knitr defaults for R Markdown rendering.
## https://yihui.name/knitr/options/
requireNamespace(package = "knitr")
knitr::opts_chunk[["set"]](
    autodep = TRUE,
    bootstrap.show.code = FALSE,
    ## Enable caching with caution.
    cache = FALSE,
    cache.lazy = FALSE,
    ## Increase verbosity of error messages.
    calling.handlers = list(error = rlang::entrace),
    comment = "",
    dev = c("png", "pdf"),
    fig.height = 10L,
    fig.retina = 2L,
    fig.width = 10L,
    highlight = TRUE,
    ## Note that messages can screw up `lapply()` plots with tabset.
    message = FALSE,
    prompt = TRUE,
    tidy = FALSE,
    warning = TRUE
)

## Set default ggplot2 theme.
requireNamespace(package = "ggplot2")
requireNamespace(package = "AcidPlots")
ggplot2::theme_set(
    AcidPlots::acid_theme_light(
        base_size = 14L,
        legend_position = "right"
    )
)
