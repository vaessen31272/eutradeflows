% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/docker.R
\name{dbconnectdocker}
\alias{dbconnectdocker}
\title{Open a RMySQL database connection inside a docker container}
\usage{
dbconnectdocker(
  dbname = "tradeflows",
  envuser = "HARVESTER_DB_USER",
  envpassword = "HARVESTER_DB_PASSWORD",
  envhost = "HARVESTER_DB_HOST",
  envport = "HARVESTER_DB_PORT"
)
}
\arguments{
\item{envuser}{name of the environment variable that contains the user name}

\item{envpassword}{name of the environment variable that contains the password}

\item{envhost}{name of the environment variable that contains the db host name}
}
\value{
a RMySQL connection object.
HARVESTER_DB_HOST: tradeflowsdb:3306
HARVESTER_DB_USER: R
HARVESTER_DB_PASSWORD_FILE: /run/secrets/db_password
}
\description{
Facilitate connection to a docker container reunning a mysql database
between inside the docker container
Connection parameters are passed as environment variables to 
the docker container. Use these to create a RMySQL connection object.
Note on password files 
Such files are only available containers started in swarm mode (docker stack deploy)
Use the environment variable envpassword = "HARVESTER_DB_PASSWORD_FILE" to pass a file
otherwise use HARVESTER_DB_PASSWORD to pass the password directly.
}
