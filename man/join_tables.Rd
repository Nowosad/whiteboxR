% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_tools.R
\name{join_tables}
\alias{join_tables}
\title{Join tables}
\usage{
join_tables(input1, pkey, input2, fkey, import_field,
  verbose_mode = FALSE)
}
\arguments{
\item{input1}{Input primary vector file (i.e. the table to be modified).}

\item{pkey}{Primary key field.}

\item{input2}{Input foreign vector file (i.e. source of data to be imported).}

\item{fkey}{Foreign key field.}

\item{import_field}{Imported field (all fields will be imported if not specified).}

\item{verbose_mode}{Sets verbose mode. If verbose mode is False, tools will not print output messages.}
}
\value{
Returns the tool text outputs.
}
\description{
Merge a vector's attribute table with another table based on a common field.
}
