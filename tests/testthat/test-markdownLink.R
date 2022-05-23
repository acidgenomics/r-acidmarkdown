test_that("markdownLink", {
    expect_output(
        object = markdownLink(
            text = "R",
            url = "https://www.r-project.org",
            title = "The R Project for Statistical Computing"
        ),
        regexp = paste(
            "\\[R\\]\\(https://www.r-project.org\\):",
            "The R Project for Statistical Computing"
        )
    )
})
