# Vanessa-fishing

Project purpose: To get used to how to use R Markdown in order to make it more friendly for others to read the code. Also to look at fish catches depending on year and country.

R packages:
tidyverse
dplyr
ggplot2

Files in order of use:
1. Raw_Data/fish_catches.csv - raw data file with all of the country and fish IDs along with the area of the fish were caught, and the number of fsh caught in 34 selected countries from 2006-2014.
2. Clean_Data/Total_catch.csv - data from the raw data fish_catches.csv, but only look at countries that caught fish in the years 2006, 2010, and 2014.
3.Fish_Catchs.Rmd - code to produce figures and calculate totals of catches depending on variable. Found in main directory because will not read any data if not placed here.
4. Figures/Country_Catches_Histogram.jpg - histogram looking at 22 countires' catches for 2006, 2010, and 2014.
5. Clean_Data/BelgiumCatch.csv - data from the raw data in (1) looking at just Belgium catches per year
6. Figures/Belgium_Catches_per_Year_scatter.jpg - figure looking at the relation between year and number of fish caught