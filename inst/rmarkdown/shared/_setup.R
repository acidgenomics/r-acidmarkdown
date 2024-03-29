## Acid Genomics shared R setup script.
## Last updated 2023-08-11.
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
## https://github.com/acidgenomics/r-acidmarkdown/issues/

## Set seed for reproducibility. Using Fibonacci sequence.
set.seed(1123581321L)

invisible(lapply(
    X = c(
        ## > "AcidBase"
        ## > "utils"
        "AcidPlots",
        "ggplot2",
        "knitr",
        "rlang"
    ),
    FUN = requireNamespace,
    quietly = TRUE
))

## Set knitr defaults for R Markdown rendering.
## https://yihui.name/knitr/options/
knitr::opts_chunk[["set"]](
    autodep = TRUE,
    bootstrap.show.code = FALSE,
    ## Enable caching with caution.
    cache = FALSE,
    cache.lazy = FALSE,
    ## Increase verbosity of error messages.
    calling.handlers = list("error" = rlang::entrace),
    comment = "",
    ## This will automatically output both PNG and PDF files.
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

## Set default ggplot2 colors and theme.
## > options(
## >     "ggplot2.continuous.colour" =
## >         AcidPlots::acid_scale_color_synesthesia_c,
## >     "ggplot2.continuous.fill" =
## >         AcidPlots::acid_scale_fill_synesthesia_c,
## >     "ggplot2.discrete.colour" =
## >         AcidPlots::acid_scale_color_synesthesia_d,
## >     "ggplot2.discrete.fill" =
## >         AcidPlots::acid_scale_fill_synesthesia_d
## > )
ggplot2::theme_set(AcidPlots::acid_theme_light())

## Improve default interactive loading/saving to use dated subdirectories.
## > dirs <- list(
## >     "rds" = AcidBase::initDir(file.path("rds", Sys.Date())),
## >     "results" = AcidBase::initDir(file.path("results", Sys.Date()))
## > )
## > options(
## >     "acid.export.dir" = dirs[["results"]],
## >     "acid.load.dir" = dirs[["rds"]],
## >     "acid.save.dir" = dirs[["rds"]]
## > )

## Ensure we save session information.
## > saveRDS(
## >     object = utils::sessionInfo(),
## >     file = file.path(dirs[["rds"]], "session-info.rds")
## > )
