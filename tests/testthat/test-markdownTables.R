test_that("Return unmodified in (interactive) R session", {
    x <- markdownTables(
        list = list(
            mpg = head(datasets::iris),
            mtcars = head(datasets::mtcars)
        ),
        captions = c("iris", "mtcars"),
        force = FALSE
    )
    expect_type(x, "list")
    expect_named(x, c("mpg", "mtcars"))
})

test_that("Simulated knit session", {
    x <- markdownTables(
        list = list(
            head(datasets::iris),
            head(datasets::mtcars)
        ),
        captions = c("iris", "mtcars"),
        force = TRUE
    )
    expect_s3_class(x, "knit_asis")
})
