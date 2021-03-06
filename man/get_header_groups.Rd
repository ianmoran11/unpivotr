% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_header_groups.R
\name{get_header_groups}
\alias{get_header_groups}
\title{Get column groups}
\usage{
get_header_groups(sheet, direction, value_ref, formats,
  .groupings = groupings(fmt_alignment_indent), .hook_if = hook(ones),
  .hook_if_rev = hook(ones), header_fill = "local_format_id",
  default_col_header_direction = default_col_header_direction_temp,
  table_data = tabledata, min_header_index = min_header_index_temp)
}
\arguments{
\item{sheet}{data frame created by xlsx_cells}

\item{direction}{a string indicating which type of headers are to be labelled. Options include compass direction or up/down/left/right.}

\item{value_ref}{reference to where data cells are located.}

\item{formats}{format object created by tidyxl.}

\item{.groupings}{expressions representing how header cells are differentiated. Most naturally works with fmt_* functions.}

\item{.hook_if}{expression determining whether direction is hooked.}

\item{.hook_if_rev}{expression determining whether direction is reverse hooked.}

\item{header_fill}{deals with merged cells. Fills in neighbouring cells if they have the same "local_format_id", "style" or are within "borders".}

\item{default_col_header_direction}{Indicates which direction is given to col headers by default. Only need if "NNW" is required, rather than "N".}

\item{table_data}{datacell dataframe.}

\item{min_header_index}{min header index}
}
\description{
Beheads multiple headers defined according to expressions in .groupings.
}
\details{
This is an internal function that:
1. Identifies which cells are likely to be headers
2. groups them according to their indenting, bold and italic formatting
3. Specifies the unpivotr function specifying the direction of the header w.r.t. table data
Behead multiple header groups
}
