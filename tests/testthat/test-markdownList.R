test_that("markdownList", {
    groceries <- c("milk", "eggs")
    md <- markdownList(groceries)
    expect_s3_class(md, "knit_asis")
    md <- markdownList(groceries)
    expect_identical(
        as.character(md),
        c("- milk\n", "- eggs\n")
    )
    md <- markdownList(groceries, ordered = TRUE)
    expect_identical(
        as.character(md),
        c("1. milk\n", "2. eggs\n")
    )
    expect_output(
        markdownList(groceries, asis = TRUE),
        "\\n- milk\\n- eggs\\n"
    )
})
