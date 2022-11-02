FROM rocker/geospatial
#RUN R -e "install.packages('webshot',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN Rscript --no-restore --no-save -e "update.packages(ask = FALSE);"
