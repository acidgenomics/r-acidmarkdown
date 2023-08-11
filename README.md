# AcidMarkdown

Toolkit for extending the functionality of [R Markdown][].

## Installation

This is an [R][] package.

```r
install.packages(
    pkgs = "AcidMarkdown",
    repos = c(
        "https://r.acidgenomics.com",
        getOption("repos")
    ),
    dependencies = TRUE
)
```

### [conda][] method

Configure [conda][] to use the [bioconda][] channels.

```sh
# Don't install recipe into base environment.
name='r-acidmarkdown'
conda create --name="$name" "$name"
conda activate "$name"
R
```

[conda]: https://conda.io/
[r markdown]: https://rmarkdown.rstudio.com/
[r]: https://www.r-project.org/
