#
# run.R
# Swapboard
#
# Created by Tosin on 26/11/2019
# MIT License and shit
#
library(rmarkdown)
library(shiny)

# When we run nginx we need to change R to point to the /app folder manually
setwd('/app')

port <- Sys.getenv('PORT')


# Runs the app in the working directory. By default this will search for an `app.R` file or 
# a ui.R + server.R file combination
# In this case the port is now the address to the nginx proxy
rmarkdown::run(
  'LAG_RUG_DASH_v0.2.Rmd'
  , shiny_args = list(
    host = '0.0.0.0',
    port = as.numeric(port)
  )
)