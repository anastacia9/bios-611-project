.PHONY: clean

clean:
	rm -rf figures
	rm -rf .created-dirs
	rm -f india_monsoon.pdf

.created-dirs:
	mkdir -p figures
	touch .created-dirs
india_monsoon.pdf \
 figures/india.png \
 figures/india.html \
 figures/median_monthly_rainfall_lineplot1.png \
 figures/median_monthly_rainfall_lineplot2.png \
 figures/median_monthly_rainfall_lineplot3.png \
 figures/median_monthly_rainfall_lineplot4.png \
 figures/median_monthly_rainfall_lineplot5.png \
 figures/median_monthly_rainfall_lineplot6.png \
 figures/median_monthly_rainfall_lineplot7.png \
 figures/median_monthly_rainfall_lineplot8.png \
 figures/lineplot_median_stdev_rainfall.png \
 figures/lineplot_median_norm_stdev_rainfall.png: \
  .created-dirs\
  data/india_rains.csv\
  india_monsoon.Rmd
	Rscript -e "rmarkdown::render('india_monsoon.Rmd',output_format='pdf_document')"
