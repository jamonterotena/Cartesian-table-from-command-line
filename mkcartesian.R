#!/usr/bin/Rscript

# Title: mkcartesian.R
# Author: jmontero
# Date: 2024-10-12
# Description:

#### Load required packages, install if required ####
pkgs = c("optparse")
for (pkg in pkgs) { if (!require(pkg, character.only = TRUE, quietly = TRUE)) { install.packages(pkg, character.only = TRUE, repos = "https://cran.uni-muenster.de/", quiet = TRUE) && require(pkg, character.only = TRUE, quietly = TRUE) } }

#### Define the command-line options ####
optionList = list(
  make_option("--col1", type = "character", action = "store", help = "Comma-separated list", metavar = "character"),
  make_option("--col2", type = "character", action = "store", help = "Comma-separated list", metavar = "character"),
  make_option("--col3", type = "character", action = "store", help = "Comma-separated list", metavar = "character"),
  make_option("--col4", type = "character", action = "store", help = "Comma-separated list", metavar = "character"),
  make_option("--col5, type = "character", action = "store", help = "Comma-separated list", metavar = "character"),
  make_option("--col6", type = "character", action = "store", help = "Comma-separated list", metavar = "character"),
  make_option("--col7", type = "character", action = "store", help = "Comma-separated list", metavar = "character"),
  make_option("--col8", type = "character", action = "store", help = "Comma-separated list", metavar = "character"),
  make_option("--col9", type = "character", action = "store", help = "Comma-separated list", metavar = "character"),
  make_option("--col10", type = "character", action = "store", help = "Comma-separated list", metavar = "character")
)

#### Parse the command-line arguments, remove 'help' ####
parsedOptions = parse_args(OptionParser(option_list = optionList))
parsedOptions <- parsedOptions[!names(parsedOptions) %in% "help"]

#### Extract the arguments by options and add them to a list ####
columnList = list()
for (col in 1:length(names(parsedOptions))) {
  columnList[[length(columnList)+1]] = unlist(strsplit(parsedOptions[[col]], ","))
}

#### Create a data frame using expand.grid() with the arguments ####
result = expand.grid(columnList)

#### Print ####
colnames(result) = NULL
print(result, row.names = FALSE)
