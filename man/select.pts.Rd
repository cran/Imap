\name{select.pts}
\alias{select.pts}
\alias{draw.polygon}
\alias{inside.polygon}
\alias{col.alpha}
\title{
Select Points on a Figure.
}
\description{
Select points either inside or outside a polygon drawn on a figure.
}
\usage{
select.pts(pts, outside.poly = FALSE, col = col.alpha("blue", 0.5), lty = 1, ...)

draw.polygon(col = "blue", alpha = .5, lty = 1, ...)

inside.polygon(pts, h)

col.alpha(color, alpha = 0.5)
}
\arguments{
  \item{pts}{
A (n x 2) matrix of points.
}
  \item{outside.poly}{
Select the points outside instead of inside the polygon. Default is FALSE.
}
  \item{col}{
The color to fill the polygon.
}
  \item{lty}{
The line type of the polygon lines.
}
  \item{\dots}{
Additional graphical parameters for points to be plotted.
}
  \item{h}{
A hull or polygon defined by a matrix ([k+1] x 2) of (ordered) vertices, [with last row = first row].
}
  \item{color}{
Either a color name, a hexadecimal string of the form "#FF00FF80", or an integer i meaning palette()[i].
}
  \item{alpha}{
An alpha transparency value where 0 means fully transparent and 1 is opaque.
}
}
\details{
Select.pts() selects points that are inside (or outside) a polygon.  The polygon is interactively drawn about points (or lines) which normally would 
have been previously plotted.  After at least three vertices of the polygon have been selected by left-clicking on the figure the interaction is 
eventually stopped by a right-click. The resulting polygon is closed and filled with color 'col' after alpha level 'alpha' has been applied via the 
col.alpha() fucntion.

Note that col.alpha() is very handy since it puts together the color and alpha level into a new color that can be directly used by functions like
lines() and polygon().
}
\references{
The inside.polygon() function is revised from the the function "Inside()" by Joseph S. Verducci (Snews: 09 Feb 1999)
See <http://www.biostat.wustl.edu/archives/html/s-news/2002-07/msg00020.html> .
}
\author{
John R. Wallace: Imap.for.R@gmail.com (Limited support.)
}
\seealso{
imap, polygon
}
\examples{
\dontrun{
plot(tmp <- cbind(1:100, rnorm(100)))
select.pts(tmp)
}
}
