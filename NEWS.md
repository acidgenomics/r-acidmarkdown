## AcidMarkdown 0.1.2 (2021-07-20)

### Minor changes

- Removed usage of magrittr pipe `%>%` in `_footer.Rmd` template file.
  Switched from `readr::read_lines` to `pipette::import` for source code
  lines import instead.

## AcidMarkdown 0.1.1 (2021-03-04)

### Minor changes

- Fixed typo in `_setup.R` file, which should be "AcidPlots" instead of
  "acidplots".

## AcidMarkdown 0.1.0 (2021-02-04)

Initial release, migrating code previously defined in basejump.
