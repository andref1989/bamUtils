% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bamUtils.R
\name{bam.cov.gr}
\alias{bam.cov.gr}
\title{Get coverage as GRanges from BAM on custom set of GRanges}
\usage{
bam.cov.gr(bam, gr, bami = NULL, count.all = FALSE, isPaired = T,
  isProperPair = T, isUnmappedQuery = F, hasUnmappedMate = F,
  isNotPassingQualityControls = F, isDuplicate = F, isValidVendorRead = T,
  mc.cores = 1, chunksize = 10, verbose = F, ...)
}
\arguments{
\item{bam}{Input bam file. Advisable to make "bam" a BamFile instance instead of a plain string, so that the index does not have to be reloaded.}

\item{gr}{GRanges of intervals to retrieve}

\item{bami}{Input bam index file.}

\item{isPaired}{See documentation for \code{scanBamFlag}. Default NA}

\item{isProperPair}{See documentation for \code{scanBamFlag}. Default NA}

\item{isUnmappedQuery}{See documentation for \code{scanBamFlag}. Default NA}

\item{hasUnmappedMate}{See documentation for \code{scanBamFlag}. Default NA}

\item{isNotPassingQualityControls}{See documentation for \code{scanBamFlag}. Default NA}

\item{isDuplicate}{See documentation for \code{scanBamFlag}. Default FALSE}

\item{isValidVendorRead}{See documentation for \code{scanBamFlag}. Default TRUE}

\item{mc.cores}{Number of cores in \code{mclapply} call.}

\item{chunksize}{How many intervals to process per core. Default 10.}

\item{verbose}{Increase verbosity}

\item{...}{passed to \code{scanBamFlag}}
}
\value{
GRanges parallel to input GRanges, but with metadata filled in.
}
\description{
gets coverage from bam in supplied ranges using "countBam", returning gr with coverage counts in
each of the provided ranges (different from bam.cov above) specified as $file, $records, and $nucleotides
columns in the values field
basically a wrapper for countBam with some standard settings for ScanBamParams
}

