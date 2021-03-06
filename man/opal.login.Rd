% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/opal.r
\name{opal.login}
\alias{opal.login}
\title{Opal login}
\usage{
opal.login(username = getOption("opal.username"),
  password = getOption("opal.password"), url = getOption("opal.url"),
  opts = getOption("opal.opts", list()), restore = NULL)
}
\arguments{
\item{username}{User name in opal(s). Can be provided by "opal.username" option.}

\item{password}{User password in opal(s). Can be provided by "opal.password" option.}

\item{url}{Opal url or list of opal urls. Can be provided by "opal.url" option.}

\item{opts}{Curl options. Can be provided by "opal.opts" option.}

\item{restore}{Workspace ID to be restored (see also opal.logout)}
}
\value{
A opal object or a list of opal objects.
}
\description{
Log in Opal(s).
}
\examples{
\dontrun{

#### The below examples illustrate the different ways to login in opal ####

# explicite username/password login
o <- opal.login(username='administrator',password='password',url='https://opal-demo.obiba.org')

# login using options
options(opal.username='administrator',
 opal.password='password',
 opal.url='https://opal-demo.obiba.org')
o <- opal.login()

# login using ssl key pair
options(opal.opts=list(
   sslcert='my-publickey.pem',
   sslkey='my-privatekey.pem'))
o <- opal.login(url='https://opal-demo.obiba.org')
}
}
