# bios-611-project

# Background
India is an agrarian country – just over half of its working population is involved in agriculture, and 
nearly a fifth of the country’s GDP comes from this sector [1,2]. The agricultural industry depends on the yearly 
monsoon rains which have intensified, shortened, and become more sporadic [3]. This study will investigate changes in rainfall between the years 1901 and 2017. It will make use of monthly measurements spanning all 36 Indian States and Territories.

Data was downloaded from kaggle.com:<br />
  https://www.kaggle.com/datasets/rajanand/rainfall-in-india<br />

References: <br />
[1] Sunder, S. (2018, January 29). India economic survey 2018: Farmers gain as agriculture 
mechanisation speeds up, but more R&D needed. The Financial Express Stories. Retrieved August 21, 
2022, from https://www.financialexpress.com/budget/india-economic-survey-2018-for-farmers-
agriculture-gdp-msp/1034266/ <br />
[2] Dr. Neelam Patel and Dr. Tanu Sethi. (n.d.). Rural Women: Key to New India's Agrarian Revolution. 
NITI Aayog. Retrieved August 21, 2022, from https://www.niti.gov.in/rural-women-key-new-indias-
agrarian-revolution <br />
[3] Denton, B., &; Sengupta, S. (2019, November 25). India's ominous future: Too little water, or far too 
much. The New York Times. Retrieved August 21, 2022. <br />

# Warning
I tried my best, but for whatever reason, I have difficulty installing certain packages in the Rstudio server. These include "terra" and "mapview". I pasted the error message below. I think the issue is with this line: "configure: error: gdal-config not found or not executable." I tried to figure out how to fix this, but it's still not clear. The pdf knits just fine on my local machine, but on the Rstudio server, I can't get passed this point. I will ask about it in class on Monday. I'm very close. I have left the "india.pdf" report in my git repository for now, but the make file is there to make all the files once I get this problem resolved.

```
> install.packages("terra")
Installing package into ‘/usr/local/lib/R/site-library’
(as ‘lib’ is unspecified)
trying URL 'http://cran.us.r-project.org/src/contrib/terra_1.6-17.tar.gz'
Content type 'application/x-gzip' length 698382 bytes (682 KB)
==================================================
downloaded 682 KB

* installing *source* package ‘terra’ ...
** package ‘terra’ successfully unpacked and MD5 sums checked
** using staged installation
configure: CC: gcc
configure: CXX: g++ -std=gnu++11
checking for gdal-config... no
no
configure: error: gdal-config not found or not executable.
ERROR: configuration failed for package ‘terra’
* removing ‘/usr/local/lib/R/site-library/terra’
* restoring previous ‘/usr/local/lib/R/site-library/terra’
Warning in install.packages :
  installation of package ‘terra’ had non-zero exit status

The downloaded source packages are in
	‘/tmp/Rtmp1RvN84/downloaded_packages’
```

# Getting Started

Download this repository and "cd" into it. Build the docker image by typing:
```
docker build . -t anastacia611
```

Start RStudio by typing:
```
docker run -v $(pwd):/home/rstudio/project -p 8787:8787 -e PASSWORD=begin!
```
Or if you are a Windows user in the Command Prompt, type:
```
docker run -v %cd%:/home/rstudio/work -e PASSWORD=work -p 8787:8787 -it anastacia611
```

Once Rstudio is running, connect to it by visiting
localhost:8787 in your browser. The username is "rstudio" and the password is "work"

Everything happens in "work" directory, so type the following into the Console:
```
setwd("/home/rstudio/work")
```

Visit the terminal in Rstudio and type:
```
make clean
make india_monsoon.pdf
```

The outcome will be a .pdf file with figures, as well as a figure directory with these same figures.
