# bios-611-project

# Background
India is an agrarian country – just over half of its working population is involved in agriculture, and 
nearly a fifth of the country’s GDP comes from this sector [1,2]. With climate change, the yearly 
monsoon rains, which the agricultural industry is so dependent upon, have intensified, shortened, and 
become more sporadic [3]. This study will investigate changes in rainfall between the years 1901 and 2017. It will make use of monthly measurements spanning all 36 Indian States and Territories.

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

# Getting Started

"cd" into the project directory and build the docker image by typing:
```
docker build . -t anastacia611
```

And then start an RStudio by typing:
```
docker run -v $(pwd):/home/rstudio/project -p 8787:8787 -e PASSWORD=begin!
```
Or if you are a Windows user in the Command Prompt, type:
```
docker run -v %cd%:/home/rstudio/work -e PASSWORD=work -p 8787:8787 -it anastacia611
```
Once the Rstudio is running connect to it by visiting
localhost:8787 in your browser. The username is "rstudio" and the password "work"

Everything happens in "work" directory, so type the following into the Console:
```
setwd("/home/rstudio/work")
```

Visit the terminal in Rstudio and type:
```
make clean
make
```

The outcome will be a .pdf file with figures, as well as a figure directory with the same figures.
