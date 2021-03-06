% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scatterplot.R
\name{points3d}
\alias{points3d}
\title{Add points to a 3D scatterplot}
\usage{
points3d(s, x, y, z, color = "orange", pch = "@", size = 1, labels = "")
}
\arguments{
\item{s}{A non-animated scatterplot object returned by \code{\link{scatterplot3js}}.}

\item{x}{Either a vector of x-coordinate values or a  three-column
data matrix with columns corresponding to the x,y,z
coordinate axes. Column labels, if present, are used as axis labels.}

\item{y}{(Optional) vector of y-coordinate values, not required if
\code{x} is a matrix.}

\item{z}{(Optional) vector of z-coordinate values, not required if
\code{x} is a matrix.}

\item{color}{Either a single hex or named color name (all points same color),
or a vector of  hex or named color names as long as the number of points in \code{x}.}

\item{pch}{Optional point glyphs or text strings, see \code{\link{scatterplot3js}}.}

\item{size}{The plot point radius, either as a single number or a
vector of sizes of length \code{nrow(x)}.}

\item{labels}{Character vector of length \code{x} of point labels displayed when the mouse moves over the points.}
}
\value{
A new scatterplot htmlwidget object.
}
\description{
Add points to a 3D scatterplot
}
\note{
This function replaces the old \code{points3d} approach used by \code{scatterplot3d}.
}
\examples{
\dontrun{
 # Adding point labels to a scatterplot:
 x <- rnorm(5)
 y <- rnorm(5)
 z <- rnorm(5)
 scatterplot3js(x, y, z, pch="o") \%>\%
   points3d(x + 0.1, y + 0.1, z, color="red", pch=paste("point", 1:5))

# Adding point labels to a graph, obtaining the graph vertex coordinates
# with the `vertices()` function:
data(LeMis)
graphjs(LeMis) \%>\% points3d(vertices(.), color="red", pch=V(LeMis)$label)

}
}
