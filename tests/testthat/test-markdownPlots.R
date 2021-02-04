test_that("markdownPlots", {
    skip_if_not(hasInternet())
    plotlist <- readRDS(file = file.path("cache", "plotlist.rds"))
    output <- capture.output()
    expect_output(
        object = markdownPlots(list = plotlist),
        regexp = "## continuous"
    )
})
