% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bamUtils.R
\name{get.pairs.grl}
\alias{get.pairs.grl}
\title{Takes reads object and returns grl with each read and its mate (if exists)}
\usage{
get.pairs.grl(reads, as.grl = TRUE, verbose = F)
}
\arguments{
\item{reads}{\code{GRanges} holding reads}

\item{as.grl}{Default TRUE. Return as a \code{GRangesList}}

\item{verbose}{Default FALSE}
}
\description{
Takes reads object and returns grl with each read and its mate (if exists)
}

