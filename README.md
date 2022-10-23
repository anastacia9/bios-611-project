# bios-611-project

# Background
India is an agrarian country – just over half of its working population is involved in agriculture, and 
nearly a fifth of the country’s GDP comes from this sector [1,2]. With climate change, the yearly 
monsoon rains, which the agricultural industry is so dependent upon, have intensified, shortened, and 
become more sporadic [3]. This study will investigate how the agricultural industry has responded to 
this change. These results will shed light on the future of India’s crop output, help determine which 
states and territories have been hardest hit, and inform decisions on environmental policy.

Data was downloaded from kaggle.com:<br />
  https://www.kaggle.com/datasets/abhinand05/crop-production-in-india<br />
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

Build the docker image by typing:
```
docker build . -t anastacia611
```

And then start an RStudio by typing:
```
docker run -v $(pwd):/home/rstudio/project -p 8787:8787 -e PASSWORD=begin!
```

Once the Rstudio is running connect to it by visiting
https://localhost:8787 in your browser. The username is "rstudio" and the password "begin!"

To build the final report, visit the terminal in RStudio and type
```
make report.pdf
```
