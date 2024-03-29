% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/S3SparkResourceConnector.R
\docType{class}
\name{S3SparkResourceConnector}
\alias{S3SparkResourceConnector}
\title{Apache Spark DBI resource connector for S3}
\format{
A R6 object of class SparkResourceConnector
}
\description{
Apache Spark DBI resource connector for S3

Apache Spark DBI resource connector for S3
}
\details{
Makes a Apache Spark connection object, that is also a DBI connection object, from a S3 resource description.
}
\section{Super classes}{
\code{\link[resourcer:DBIResourceConnector]{resourcer::DBIResourceConnector}} -> \code{\link[resourcer:SparkResourceConnector]{resourcer::SparkResourceConnector}} -> \code{S3SparkResourceConnector}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-S3SparkResourceConnector-new}{\code{S3SparkResourceConnector$new()}}
\item \href{#method-S3SparkResourceConnector-isFor}{\code{S3SparkResourceConnector$isFor()}}
\item \href{#method-S3SparkResourceConnector-createDBIConnection}{\code{S3SparkResourceConnector$createDBIConnection()}}
\item \href{#method-S3SparkResourceConnector-getTableName}{\code{S3SparkResourceConnector$getTableName()}}
\item \href{#method-S3SparkResourceConnector-readDBTable}{\code{S3SparkResourceConnector$readDBTable()}}
\item \href{#method-S3SparkResourceConnector-readDBTibble}{\code{S3SparkResourceConnector$readDBTibble()}}
\item \href{#method-S3SparkResourceConnector-closeDBIConnection}{\code{S3SparkResourceConnector$closeDBIConnection()}}
\item \href{#method-S3SparkResourceConnector-clone}{\code{S3SparkResourceConnector$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-S3SparkResourceConnector-new"></a>}}
\if{latex}{\out{\hypertarget{method-S3SparkResourceConnector-new}{}}}
\subsection{Method \code{new()}}{
Create a SparkResourceConnector instance.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{S3SparkResourceConnector$new()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A SparkResourceConnector object.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-S3SparkResourceConnector-isFor"></a>}}
\if{latex}{\out{\hypertarget{method-S3SparkResourceConnector-isFor}{}}}
\subsection{Method \code{isFor()}}{
Check if the provided resource applies to a Apache Spark server.
  The resource URL scheme must be one of "s3+spark", "s3+spark+http" or "s3+spark+https".
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{S3SparkResourceConnector$isFor(resource)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{resource}}{The resource object to validate.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A logical.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-S3SparkResourceConnector-createDBIConnection"></a>}}
\if{latex}{\out{\hypertarget{method-S3SparkResourceConnector-createDBIConnection}{}}}
\subsection{Method \code{createDBIConnection()}}{
Creates a DBI connection object from a Apache Spark resource.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{S3SparkResourceConnector$createDBIConnection(resource)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{resource}}{A valid resource object.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A DBI connection object.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-S3SparkResourceConnector-getTableName"></a>}}
\if{latex}{\out{\hypertarget{method-S3SparkResourceConnector-getTableName}{}}}
\subsection{Method \code{getTableName()}}{
Get the SQL table name from the resource URL.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{S3SparkResourceConnector$getTableName(resource)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{resource}}{A valid resource object.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
The SQL table name.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-S3SparkResourceConnector-readDBTable"></a>}}
\if{latex}{\out{\hypertarget{method-S3SparkResourceConnector-readDBTable}{}}}
\subsection{Method \code{readDBTable()}}{
Read a table as a vanilla tibble using DBI connection object.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{S3SparkResourceConnector$readDBTable(conn, resource)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{conn}}{A DBI connection object.}

\item{\code{resource}}{A valid resource object.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-S3SparkResourceConnector-readDBTibble"></a>}}
\if{latex}{\out{\hypertarget{method-S3SparkResourceConnector-readDBTibble}{}}}
\subsection{Method \code{readDBTibble()}}{
Read a table as a SQL tibble using DBI connection object.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{S3SparkResourceConnector$readDBTibble(conn, resource)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{conn}}{A DBI connection object.}

\item{\code{resource}}{A valid resource object.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-S3SparkResourceConnector-closeDBIConnection"></a>}}
\if{latex}{\out{\hypertarget{method-S3SparkResourceConnector-closeDBIConnection}{}}}
\subsection{Method \code{closeDBIConnection()}}{
Close the DBI connection to Apache Spark.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{S3SparkResourceConnector$closeDBIConnection(conn)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{conn}}{A DBI connection object.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-S3SparkResourceConnector-clone"></a>}}
\if{latex}{\out{\hypertarget{method-S3SparkResourceConnector-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{S3SparkResourceConnector$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
