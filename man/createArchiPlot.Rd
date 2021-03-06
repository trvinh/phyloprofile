% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/createDomainPlot.R
\name{createArchiPlot}
\alias{createArchiPlot}
\title{Create protein's domain architecure plot}
\usage{
createArchiPlot(info = NULL, domainDf = NULL, labelArchiSize = 12,
    titleArchiSize = 12)
}
\arguments{
\item{info}{a list contains seed and ortholog's IDs}

\item{domainDf}{dataframe contains domain info for the seed and ortholog.
This including the seed ID, orthologs IDs, sequence lengths, feature names,
start and end positions, feature weights (optional) and the status to
determine if that feature is important for comparison the architecture
between 2 proteins* (e.g. seed protein vs ortholog) (optional).}

\item{labelArchiSize}{lable size (in px). Default = 12.}

\item{titleArchiSize}{title size (in px). Default = 12.}
}
\value{
A domain plot as arrangeGrob object. Use grid::grid.draw(plot) to
render.
}
\description{
Create architecture plot for both seed and orthologous protein.
If domains of ortholog are missing, only architecture of seed protein will
be plotted. NOTE: seed protein ID is the one being shown in the profile plot,
which normally is also the orthologous group ID.
}
\examples{
seedID <- "101621at6656"
orthoID <- "101621at6656|AGRPL@224129@0|224129_0:001955|1"
info <- c(seedID, orthoID)
domainFile <- system.file(
    "extdata", "domainFiles/101621at6656.domains",
    package = "PhyloProfile", mustWork = TRUE
)
domainDf <- parseDomainInput(seedID, domainFile, "file")
plot <- createArchiPlot(info, domainDf, 9, 9)
grid::grid.draw(plot)
}
\seealso{
\code{\link{singleDomainPlotting}}, \code{\link{sortDomains}},
\code{\link{parseDomainInput}}, \code{\link{getQualColForVector}}
}
\author{
Vinh Tran {tran@bio.uni-frankfurt.de}
}
