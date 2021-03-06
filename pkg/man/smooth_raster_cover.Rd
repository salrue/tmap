% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/smooth_raster_cover.R
\name{smooth_raster_cover}
\alias{smooth_raster_cover}
\title{Get a smoothed cover of a raster object}
\usage{
smooth_raster_cover(shp, var = NULL, bandwidth = NA, threshold = 0.6,
  output = "SpatialPolygons")
}
\arguments{
\item{shp}{raster object, from either \code{\link[sp:SpatialGridDataFrame]{SpatialGrid(DataFrame)}} or \code{\link[raster:Raster-class]{Raster}} class.}

\item{var}{name of the variable from which missing values are flagged. If unspecified, the first variable will be taken.}

\item{bandwidth}{single numeric value or vector of two numeric values that specifiy the bandwidth of the kernal density estimator. See details.}

\item{threshold}{numeric value between 0 and 1 that determines which part of the estimated 2D kernal density is returned as cover.}

\item{output}{class of the returned object. One of: \code{\link[sp:SpatialPolygons]{SpatialPolygons}}, \code{\link[sp:SpatialLines]{SpatialLines}}, \code{\link[sp:SpatialGridDataFrame]{SpatialGridDataFrame}}, or \code{\link[raster:Raster-class]{RasterLayer}}. A vector of class names results in a list of output objects.}
}
\description{
Get a smoothed cover of a raster object. From all non-missing values of a raster object, a 2D kernal density is applied. The output is a SpatialPolygons object. Used by \code{\link{smooth_map}}.
}
\details{
For the estimation of the 2D kernal density, code is borrowed from \code{\link[KernSmooth:bkde2D]{bkde2D}}. This implemention is slightly different: \code{\link[KernSmooth:bkde2D]{bkde2D}} takes point coordinates and applies linear binning, whereas in this function, the data is already binned, with values 1 if the values of \code{var} are not missing and 0 if values of \code{var} are missing.
}

