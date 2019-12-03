#
# init.R
# LAG-RUG-DASH
#
# Created by Tosin-Dairo on 1/12/2019
# MIT License
#

my_packages = c("rmarkdown","httr", "flexdashboard", "tidyverse", "plotly", "shiny", "scales", "DT", "echarts4r", "tools", "naniar", "mice", "devtools")


install_if_missing = function(p) {
  if (p %in% rownames(installed.packages()) == FALSE) {
    install.packages(p)
  }
}

invisible(sapply(my_packages, install_if_missing))
# install pool from Github
invisible(devtools::install_github("rstudio/pool"))