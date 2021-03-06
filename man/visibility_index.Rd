% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/terrain_analysis.R
\name{visibility_index}
\alias{visibility_index}
\title{Visibility index}
\usage{
visibility_index(dem, output, height = 2, res_factor = 2,
  verbose_mode = FALSE)
}
\arguments{
\item{dem}{Input raster DEM file.}

\item{output}{Output raster file.}

\item{height}{Viewing station height, in z units.}

\item{res_factor}{The resolution factor determines the density of measured viewsheds.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is False, tools will not print output messages.}
}
\value{
Returns the tool text outputs.
}
\description{
Estimates the relative visibility of sites in a DEM.
}
