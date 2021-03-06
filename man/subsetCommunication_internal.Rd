% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/analysis.R
\name{subsetCommunication_internal}
\alias{subsetCommunication_internal}
\title{Subset the inferred cell-cell communications of interest}
\usage{
subsetCommunication_internal(
  net,
  LR,
  cells.level,
  slot.name = "net",
  sources.use = NULL,
  targets.use = NULL,
  signaling = NULL,
  pairLR.use = NULL,
  thresh = 0.05,
  datasets = NULL,
  ligand.pvalues = NULL,
  ligand.logFC = NULL,
  ligand.pct.1 = NULL,
  ligand.pct.2 = NULL,
  receptor.pvalues = NULL,
  receptor.logFC = NULL,
  receptor.pct.1 = NULL,
  receptor.pct.2 = NULL
)
}
\arguments{
\item{net, LR, cells.level}{net is object@net or a data frame; LR: object@LR$LRsig; cells.level: levels(object@idents)}

\item{slot.name}{the slot name of object: slot.name = "net" when extracting the inferred communications at the level of ligands/receptors; slot.name = "netP" when extracting the inferred communications at the level of signaling pathways}

\item{sources.use}{a vector giving the index or the name of source cell groups}

\item{targets.use}{a vector giving the index or the name of target cell groups.}

\item{signaling}{a character vector giving the name of signaling pathways of interest}

\item{pairLR.use}{a data frame consisting of one column named either "interaction_name" or "pathway_name", defining the interactions of interest}

\item{thresh}{threshold of the p-value for determining significant interaction}

\item{datasets}{select the inferred cell-cell communications from a particular `datasets` when inputing a data frame `net`}

\item{ligand.pvalues, ligand.logFC, ligand.pct.1, ligand.pct.2}{set threshold for ligand genes

ligand.pvalues: threshold for pvalues in the differential expression gene analysis (DEG)

ligand.logFC: threshold for logFoldChange in the DEG analysis; When ligand.logFC > 0, keep upgulated genes; otherwise, kepp downregulated genes

ligand.pct.1: threshold for the percent of expressed genes in the defined 'positive' cell group. keep genes with percent greater than ligand.pct.1

ligand.pct.2: threshold for the percent of expressed genes in the cells except for the defined 'positive' cell group}

\item{receptor.pvalues, receptor.logFC, receptor.pct.1, receptor.pct.2}{set threshold for receptor genes}
}
\value{
A data frame of the inferred cell-cell communications of interest, consisting of source, target, interaction_name, pathway_name, prob and other information
}
\description{
NB: If all arguments are NULL, it returns a data frame consisting of all the inferred cell-cell communications
}
