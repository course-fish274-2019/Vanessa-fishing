Fish Catches in years 2006-2014
========================================================
author: Vanessa Murakami
date: 
autosize: true

About the Data
========================================================
- 35 Countries surveyed on fish caught in 2006-2014
- Going to look at comparisons between each country
- Also looking at one country throughout the years

![alt text](Pictures/barracuda_fish_school_1050x700.jpg)

Data Collected
========================================================

- Packages:

```r
library(tidyverse)
library(dplyr)
```
- Raw Data

```r
all_data<-read.csv("Raw_Data/fish_catches.csv")
head(all_data)
```

```
  Species   Area Units Country X2014 X2013 X2012 X2011 X2010 X2009 X2008
1     ANF     27   TLW      BE   993  1633  1716  1279  1031   853   964
2     ANF   27.4   TLW      BE   217   137   133   116   131   140   185
3     ANF 27.4.A   TLW      BE     0     0     0     0     0     0     0
4     ANF 27.4.B   TLW      BE   213   135   131   111   124   134   181
5     ANF 27.4.C   TLW      BE     4     2     2     6     7     6     4
6     ANF   27.7   TLW      BE   491  1124  1382   966   721   518   585
  X2007 X2006  X X.1 X.2 X.3 X.4 X.5 X.6 X.7 X.8 X.9 X.10 X.11
1  1363  1193 NA  NA  NA  NA  NA  NA  NA  NA  NA  NA   NA   NA
2   181   141 NA  NA  NA  NA  NA  NA  NA  NA  NA  NA   NA   NA
3     0     0 NA  NA  NA  NA  NA  NA  NA  NA  NA  NA   NA   NA
4   179   138 NA  NA  NA  NA  NA  NA  NA  NA  NA  NA   NA   NA
5     3     3 NA  NA  NA  NA  NA  NA  NA  NA  NA  NA   NA   NA
6  1040   907 NA  NA  NA  NA  NA  NA  NA  NA  NA  NA   NA   NA
```

Looking at Total catch in years 2006, 2010 and 2014
========================================================


```
  Country   X2014   X2010   X2006
1      BE   79514   65723   67564
2      DE  674732  661578  884707
3      DK 2309358 2596888 2680872
4      EE  242623  340400  296160
5      ES 1123042 1195609 1163588
6      FI  616519  508880  451731
```

```r
total_catch_long<-gather(total_catch,year, counts, -Country)
head(total_catch_long)
```

```
  Country  year  counts
1      BE X2014   79514
2      DE X2014  674732
3      DK X2014 2309358
4      EE X2014  242623
5      ES X2014 1123042
6      FI X2014  616519
```
- Made year and counts their own column

Histogram of Countries
========================================================
<img src="fishing_presentation-figure/unnamed-chunk-5-1.png" title="plot of chunk unnamed-chunk-5" alt="plot of chunk unnamed-chunk-5" width="1000px" height="600px" />

- NO (Norawy) had the biggest change
- RU, SE, and UK had the smallest change


Belgium Fish Catches from 2006-2014
========================================================

```
  Species Country X2014 X2013 X2012 X2011 X2010 X2009 X2008 X2007 X2006
1     ANF      BE   993  1633  1716  1279  1031   853   964  1363  1193
2     ANF      BE   217   137   133   116   131   140   185   181   141
3     ANF      BE     0     0     0     0     0     0     0     0     0
4     ANF      BE   213   135   131   111   124   134   181   179   138
5     ANF      BE     4     2     2     6     7     6     4     3     3
6     ANF      BE   491  1124  1382   966   721   518   585  1040   907
```

![alt text](Pictures/belgium-location-map.jpg)

Manipulation of Data for Belgium Catches
========================================================

```r
BEdata<- fish_catch %>%
  gather(year, count, X2014:X2013:X2012:X2011:X2010:X2009:X2008:X2007:X2006)
BEdataframe<-data.frame(BEdata)
BE_catch<-BEdata%>%
  select(year,count)
new_BE<-BE_catch%>%
  group_by(year)%>%
  summarize(count=sum(count))
new_BE
```

```
# A tibble: 9 x 2
  year  count
  <chr> <int>
1 X2006 67564
2 X2007 72089
3 X2008 66298
4 X2009 63634
5 X2010 65723
6 X2011 66582
7 X2012 73134
8 X2013 76153
9 X2014 79514
```

Scatter plot of Belgium Catches 2006-2014
========================================================
<img src="fishing_presentation-figure/unnamed-chunk-8-1.png" title="plot of chunk unnamed-chunk-8" alt="plot of chunk unnamed-chunk-8" width="1000px" height="600px" />


