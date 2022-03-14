context("markdownHeader")

test_that("default", {
    md <- markdownHeader("Header")
    expect_is(md, "knit_asis")
})

test_that("level", {
    md <- markdownHeader("Header", level = 4L)
    expect_identical(
        object = as.character(md),
        expected = "#### Header\n" # nolint
    )
})

test_that("invalid level", {
    expect_error(
        object = markdownHeader("Header", level = 8L),
        expected = "Markdown supports header levels 1-7."
    )
})

test_that("tabset", {
    md <- markdownHeader("Header", tabset = TRUE)
    expect_identical(
        object = as.character(md),
        expected = "## Header {.tabset}\n" # nolint
    )
})

test_that("asis", {
    expect_output(
        object = markdownHeader("Header", asis = TRUE),
        regexp = "\\n\\n## Header\\n" # nolint
    )
})
