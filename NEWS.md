## AcidMarkdown 0.1.4 (2021-09-09)

### Major changes

- Now setting default ggplot2 colors in `_setup.R` file.

## AcidMarkdown 0.1.3 (2021-09-08)

### Minor changes

- Updated basejump dependencies.
- Removed documentation reference to cowplot `plot_grid` function. Now
  recommending usage of patchwork package instead.

## AcidMarkdown 0.1.2 (2021-07-20)

### Minor changes

- Removed usage of magrittr pipe `%>%` in `_footer.Rmd` template file.
  Switched from `readr::read_lines` to `pipette::import` for source code
  lines import instead.
- Removed dependency on stringr package by removing `str_dup` in favor of
  using base R `rep` method instead.

## AcidMarkdown 0.1.1 (2021-03-04)

### Minor changes

- Fixed typo in `_setup.R` file, which should be "AcidPlots" instead of
  "acidplots".

## AcidMarkdown 0.1.0 (2021-02-04)

Initial release, migrating code previously defined in basejump.
