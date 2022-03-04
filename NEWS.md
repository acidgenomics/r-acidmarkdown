# AcidMarkdown 0.1.6 (UNRELEASED)

# AcidMarkdown 0.1.5 (2021-12-15)

## Minor changes

- Disabling ggplot custom color and fill palette overrides in `_setup.R` include
  file until we push a new version of the AcidPlots package. Currently causing
  bcbioRNASeq quality control R Markdown template to fail.
- Updated and reorganized references defined `bibliography.bib` file. Had to
  rework ggplot2 reference, as this was observed to cause pandoc 2.16 to fail.
  Note that pandoc 2.14, the version bundled with RStudio, at least on macOS,
  does not have this rendering issue, which is why it was difficult to catch.

# AcidMarkdown 0.1.4 (2021-09-09)

## Major changes

- Now setting default ggplot2 colors in `_setup.R` file.

# AcidMarkdown 0.1.3 (2021-09-08)

## Minor changes

- Updated basejump dependencies.
- Removed documentation reference to cowplot `plot_grid` function. Now
  recommending usage of patchwork package instead.

# AcidMarkdown 0.1.2 (2021-07-20)

## Minor changes

- Removed usage of magrittr pipe `%>%` in `_footer.Rmd` template file.
  Switched from `readr::read_lines` to `pipette::import` for source code
  lines import instead.
- Removed dependency on stringr package by removing `str_dup` in favor of
  using base R `rep` method instead.

# AcidMarkdown 0.1.1 (2021-03-04)

## Minor changes

- Fixed typo in `_setup.R` file, which should be "AcidPlots" instead of
  "acidplots".

# AcidMarkdown 0.1.0 (2021-02-04)

Initial release, migrating code previously defined in basejump.
