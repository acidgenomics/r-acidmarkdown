# AcidMarkdown

[![Install with Bioconda](https://img.shields.io/badge/install%20with-bioconda-brightgreen.svg)](http://bioconda.github.io/recipes/r-acidmarkdown/README.html) ![Lifecycle: stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)

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

### [Conda][] method

Configure [conda][] to use the [bioconda][] channels.

```sh
# Don't install recipe into base environment.
name='r-acidmarkdown'
conda create --name="$name" "$name"
conda activate "$name"
R
```

[bioconda]: https://bioconda.github.io/
[conda]: https://conda.io/
[r markdown]: https://rmarkdown.rstudio.com/
[r]: https://www.r-project.org/
