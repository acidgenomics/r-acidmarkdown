% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/markdownList.R
\name{markdownList}
\alias{markdownList}
\title{Markdown list}
\usage{
markdownList(text, ordered = FALSE, asis = FALSE)
}
\arguments{
\item{text}{\code{character(1)}.
Text.}

\item{ordered}{\code{logical(1)}.}

\item{asis}{\code{logical(1)}.
Set this to \code{TRUE} when using the function inside a loop or inside an R
Markdown chunk with '\code{results = "asis"}' enabled.}
}
\value{
\itemize{
\item \code{asis = TRUE}: \code{knitr::asis_output()} return.
\item \code{asis = FALSE}: \code{writeLines()} return.
}
}
\description{
Include a Markdown-formatted list, either ordered or unordered. This function
works in any R Markdown code block. When calling from inside an \code{asis} chunk,
set \code{asis = TRUE}.
}
\note{
Updated 2020-07-24.
}
\examples{
groceries <- c("milk", "eggs")
markdownList(groceries)
markdownList(groceries, ordered = TRUE)
markdownList(groceries, asis = TRUE)
}
\seealso{
\href{https://daringfireball.net/projects/markdown/syntax}{Markdown Syntax}.
}
