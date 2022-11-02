FROM rocker/geospatial
RUN Rscript --no-restore --no-save -e "update.packages(ask = FALSE);"
