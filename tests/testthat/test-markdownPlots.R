data(airquality, package = "datasets", envir = environment())

test_that("markdownPlots", {
    p1 <- hist(airquality[["Ozone"]], plot = FALSE)
    p2 <- hist(airquality[["Wind"]], plot = FALSE)
    list <- list("ozone" = p1, "wind" = p2)
    expect_output(
        object = markdownPlots(list),
        regexp = "## ozone"
    )
})
