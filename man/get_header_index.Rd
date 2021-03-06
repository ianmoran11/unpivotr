% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{get_header_index}
\alias{get_header_index}
\title{The the current names of header groups.}
\usage{
get_header_index(labels, regex_term = "^col_header")
}
\arguments{
\item{labels}{list of labels.}

\item{regex_term}{prefix for col_header.}
}
\description{
This is an internal function that returns the names of header groups.
Because header group names are produced automatically (for example, W_header_label_01) and are indexed,
this function is required to determine what header names are already used
in the annotated tidyxl data frame.
}
