FROM rocker/verse
RUN R -e "install.packages('viridis',dependencies=TRUE, repos='http://cran.rstudio.com/', Ncpus = 4)"
RUN R -e "install.packages('methods',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('mapview',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('htmlwidgets',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('terra',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN Rscript --no-restore --no-save -e "update.packages(ask = FALSE);"
