% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/coordinate-provider.R
\name{CoordinateProvider}
\alias{CoordinateProvider}
\title{CoordinateProvider}
\description{
coordinates methods
}
\examples{
z <- CoordinateProvider$new()
z$lon()
z$lat()
z$position()
z$position(bbox = c(-120, 30, -110, 60))
}
\keyword{internal}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-CoordinateProvider-lon}{\code{CoordinateProvider$lon()}}
\item \href{#method-CoordinateProvider-lat}{\code{CoordinateProvider$lat()}}
\item \href{#method-CoordinateProvider-position}{\code{CoordinateProvider$position()}}
\item \href{#method-CoordinateProvider-clone}{\code{CoordinateProvider$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CoordinateProvider-lon"></a>}}
\if{latex}{\out{\hypertarget{method-CoordinateProvider-lon}{}}}
\subsection{Method \code{lon()}}{
a latitude value
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CoordinateProvider$lon()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CoordinateProvider-lat"></a>}}
\if{latex}{\out{\hypertarget{method-CoordinateProvider-lat}{}}}
\subsection{Method \code{lat()}}{
a longitude value
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CoordinateProvider$lat()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CoordinateProvider-position"></a>}}
\if{latex}{\out{\hypertarget{method-CoordinateProvider-position}{}}}
\subsection{Method \code{position()}}{
a position, of form \verb{[longitude,latitude]}
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CoordinateProvider$position(bbox = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{bbox}}{optionally, specify a bounding box for the position
to be in, of the form \verb{[west,south,east,north]} - checks that the
bbox has valid values for lat and long}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CoordinateProvider-clone"></a>}}
\if{latex}{\out{\hypertarget{method-CoordinateProvider-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CoordinateProvider$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
