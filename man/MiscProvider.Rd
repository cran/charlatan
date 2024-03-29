% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/misc-provider.R
\name{MiscProvider}
\alias{MiscProvider}
\title{MiscProvider}
\description{
miscellaneous methods
}
\examples{
(x <- MiscProvider$new())
x$language_locale_codes
x$language_code()
x$locale()
x$boolean()
x$null_boolean()
}
\keyword{internal}
\section{Super class}{
\code{\link[charlatan:BaseProvider]{charlatan::BaseProvider}} -> \code{MiscProvider}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{language_locale_codes}}{(list) locale codes by locale family}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-MiscProvider-boolean}{\code{MiscProvider$boolean()}}
\item \href{#method-MiscProvider-null_boolean}{\code{MiscProvider$null_boolean()}}
\item \href{#method-MiscProvider-locale}{\code{MiscProvider$locale()}}
\item \href{#method-MiscProvider-language_code}{\code{MiscProvider$language_code()}}
\item \href{#method-MiscProvider-clone}{\code{MiscProvider$clone()}}
}
}
\if{html}{\out{
<details><summary>Inherited methods</summary>
<ul>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BaseProvider" data-id="bothify"><a href='../../charlatan/html/BaseProvider.html#method-BaseProvider-bothify'><code>charlatan::BaseProvider$bothify()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BaseProvider" data-id="check_locale"><a href='../../charlatan/html/BaseProvider.html#method-BaseProvider-check_locale'><code>charlatan::BaseProvider$check_locale()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BaseProvider" data-id="lexify"><a href='../../charlatan/html/BaseProvider.html#method-BaseProvider-lexify'><code>charlatan::BaseProvider$lexify()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BaseProvider" data-id="numerify"><a href='../../charlatan/html/BaseProvider.html#method-BaseProvider-numerify'><code>charlatan::BaseProvider$numerify()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BaseProvider" data-id="random_digit"><a href='../../charlatan/html/BaseProvider.html#method-BaseProvider-random_digit'><code>charlatan::BaseProvider$random_digit()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BaseProvider" data-id="random_digit_not_zero"><a href='../../charlatan/html/BaseProvider.html#method-BaseProvider-random_digit_not_zero'><code>charlatan::BaseProvider$random_digit_not_zero()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BaseProvider" data-id="random_digit_not_zero_or_empty"><a href='../../charlatan/html/BaseProvider.html#method-BaseProvider-random_digit_not_zero_or_empty'><code>charlatan::BaseProvider$random_digit_not_zero_or_empty()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BaseProvider" data-id="random_digit_or_empty"><a href='../../charlatan/html/BaseProvider.html#method-BaseProvider-random_digit_or_empty'><code>charlatan::BaseProvider$random_digit_or_empty()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BaseProvider" data-id="random_element"><a href='../../charlatan/html/BaseProvider.html#method-BaseProvider-random_element'><code>charlatan::BaseProvider$random_element()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BaseProvider" data-id="random_element_prob"><a href='../../charlatan/html/BaseProvider.html#method-BaseProvider-random_element_prob'><code>charlatan::BaseProvider$random_element_prob()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BaseProvider" data-id="random_int"><a href='../../charlatan/html/BaseProvider.html#method-BaseProvider-random_int'><code>charlatan::BaseProvider$random_int()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BaseProvider" data-id="random_letter"><a href='../../charlatan/html/BaseProvider.html#method-BaseProvider-random_letter'><code>charlatan::BaseProvider$random_letter()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BaseProvider" data-id="randomize_nb_elements"><a href='../../charlatan/html/BaseProvider.html#method-BaseProvider-randomize_nb_elements'><code>charlatan::BaseProvider$randomize_nb_elements()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MiscProvider-boolean"></a>}}
\if{latex}{\out{\hypertarget{method-MiscProvider-boolean}{}}}
\subsection{Method \code{boolean()}}{
get a random boolean, \code{TRUE} or \code{FALSE}
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MiscProvider$boolean(chance_of_getting_true = 50)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{chance_of_getting_true}}{(integer) an integer, default: 50}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MiscProvider-null_boolean"></a>}}
\if{latex}{\out{\hypertarget{method-MiscProvider-null_boolean}{}}}
\subsection{Method \code{null_boolean()}}{
get a random boolean, \code{TRUE} or \code{FALSE}, or NULL
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MiscProvider$null_boolean()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MiscProvider-locale"></a>}}
\if{latex}{\out{\hypertarget{method-MiscProvider-locale}{}}}
\subsection{Method \code{locale()}}{
get a random locale
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MiscProvider$locale()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MiscProvider-language_code"></a>}}
\if{latex}{\out{\hypertarget{method-MiscProvider-language_code}{}}}
\subsection{Method \code{language_code()}}{
random language code
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MiscProvider$language_code()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MiscProvider-clone"></a>}}
\if{latex}{\out{\hypertarget{method-MiscProvider-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MiscProvider$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
