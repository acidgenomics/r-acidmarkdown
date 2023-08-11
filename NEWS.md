# Release notes

## AcidMarkdown 0.2.6 (2023-08-11)

Minor changes:

- Now requiring R 4.3.
- Updated shared `_setup.R` file to reflect changes in AcidPlots package.

## AcidMarkdown 0.2.5 (2022-10-24)

Major changes:

- Attempt to use level 2 headers by default in R Markdown documents, which
  plays nicer with markdownlint-cli (Node) and in VS Code.

## AcidMarkdown 0.2.4 (2022-09-01)

- Added an additional `bcbio-nextgen` link, to avoid issues in bcbioRNASeq.
- Updated roxygen2 documentation.
- Updated `NEWS.md` to follow recommended `markdownlint` conventions.

## AcidMarkdown 0.2.3 (2022-05-24)

Major changes:

- Reworked `markdownPlots` and `markdownTables` using an S4 generic approach,
  as these are useful in other bioinformatics packages.
- Removed all `md*` aliases from NAMESPACE.

## AcidMarkdown 0.2.2 (2022-05-23)

Minor changes:

- Updated lintr checks and testthat unit tests.

## AcidMarkdonw 0.2.1 (2022-05-10)

Minor changes:

- Simplified session information return in shared footer to only use
  `utils::sessionInfo`.

## AcidMarkdown 0.2.0 (2022-04-29)

Major changes:

- Updated R dependency to 4.2.
- Removed strong `Imports` dependency of knitr, in favor of lighter `Suggests`
  approach that loads functions conditionally using `requireNamespace`.

## AcidMarkdown 0.1.6 (2022-03-11)

Minor changes:

- Added useful commented code into default `_setup.R` file for R Markdown.
- Updated website to use bootstrap 5 template.

## AcidMarkdown 0.1.5 (2021-12-15)

Minor changes:

- Disabling ggplot custom color and fill palette overrides in `_setup.R` include
  file until we push a new version of the AcidPlots package. Currently causing
  bcbioRNASeq quality control R Markdown template to fail.
- Updated and reorganized references defined `bibliography.bib` file. Had to
  rework ggplot2 reference, as this was observed to cause pandoc 2.16 to fail.
  Note that pandoc 2.14, the version bundled with RStudio, at least on macOS,
  does not have this rendering issue, which is why it was difficult to catch.

## AcidMarkdown 0.1.4 (2021-09-09)

Major changes:

- Now setting default ggplot2 colors in `_setup.R` file.

## AcidMarkdown 0.1.3 (2021-09-08)

Minor changes:

- Updated basejump dependencies.
- Removed documentation reference to cowplot `plot_grid` function. Now
  recommending usage of patchwork package instead.

## AcidMarkdown 0.1.2 (2021-07-20)

Minor changes:

- Removed usage of magrittr pipe `%>%` in `_footer.Rmd` template file.
  Switched from `readr::read_lines` to `pipette::import` for source code
  lines import instead.
- Removed dependency on stringr package by removing `str_dup` in favor of
  using base R `rep` method instead.

## AcidMarkdown 0.1.1 (2021-03-04)

Minor changes:

- Fixed typo in `_setup.R` file, which should be "AcidPlots" instead of
  "acidplots".

## AcidMarkdown 0.1.0 (2021-02-04)

Initial release, migrating code previously defined in basejump.
