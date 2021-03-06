% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/image_analysis.R
\name{mosaic}
\alias{mosaic}
\title{Mosaic}
\usage{
mosaic(inputs, output, method = "cc", verbose_mode = FALSE)
}
\arguments{
\item{inputs}{Input raster files.}

\item{output}{Output raster file.}

\item{method}{Resampling method; options include 'nn' (nearest neighbour), 'bilinear', and 'cc' (cubic convolution).}

\item{verbose_mode}{Sets verbose mode. If verbose mode is False, tools will not print output messages.}
}
\value{
Returns the tool text outputs.
}
\description{
Mosaics two or more images together.
}
