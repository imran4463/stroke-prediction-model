f(!require('tidyverse')){
  install.packages('tidyverse')
  library('tidyverse')
}
## Loading required package: tidyverse
## ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
## ✔ dplyr     1.1.3     ✔ readr     2.1.4
## ✔ forcats   1.0.0     ✔ stringr   1.5.0
## ✔ ggplot2   3.4.3     ✔ tibble    3.2.1
## ✔ lubridate 1.9.2     ✔ tidyr     1.3.0
## ✔ purrr     1.0.1     
## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
## ✖ dplyr::filter() masks stats::filter()
## ✖ dplyr::lag()    masks stats::lag()
## ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
if(!require('lubridate')){
  install.packages('lubridate')
  library('lubridate')
}
if(!require('ggplot2')){
  install.packages('ggplot2')
  library('ggplot2')
}
if(!require('dplyr')){
  install.packages('dplyr')
  library('dplyr')
}
if(!require('caret')) {
  install.packages('caret')
  library('caret')
}
## Loading required package: caret
## Loading required package: lattice
## 
## Attaching package: 'caret'
## The following object is masked from 'package:purrr':
## 
##     lift
if(!require('randomForest')) {
  install.packages('randomForest')
  library('randomForest')
}
## Loading required package: randomForest
## randomForest 4.7-1.1
## Type rfNews() to see new features/changes/bug fixes.
## 
## Attaching package: 'randomForest'
## The following object is masked from 'package:dplyr':
## 
##     combine
## The following object is masked from 'package:ggplot2':
## 
##     margin
if(!require('skimr')) {
  install.packages('skimr')
  library('skimr')
}
## Loading required package: skimr
if(!require('gridExtra')) {
  install.packages('gridExtra')
  library('gridExtra')
}
## Loading required package: gridExtra
## 
## Attaching package: 'gridExtra'
## The following object is masked from 'package:randomForest':
## 
##     combine
## The following object is masked from 'package:dplyr':
## 
##     combine
if(!require('caTools')) {
  install.packages('caTools')
  library('caTools')
}
## Loading required package: caTools
if(!require('corrplot')) {
  install.packages('corrplot')
  library('corrplot')
}
## Loading required package: corrplot
## corrplot 0.92 loaded
if(!require('ggcorrplot')) {
  install.packages('ggcorrplot')
  library('ggcorrplot')
}
## Loading required package: ggcorrplot
if(!require('naniar')){
  install.packages('naniar')
  library('naniar')
}
## Loading required package: naniar
## 
## Attaching package: 'naniar'
## The following object is masked from 'package:skimr':
## 
##     n_complete
##import files

setwd("C:/Users/kenne/Desktop/StrokePredictionCaseStudy/StrokePrediction")
Data_Stroke <- read.csv('healthcare-dataset-stroke-data.csv')
Describe and explore the data
summary(Data_Stroke)
##        id           gender               age         hypertension    
##  Min.   :   67   Length:5110        Min.   : 0.08   Min.   :0.00000  
##  1st Qu.:17741   Class :character   1st Qu.:25.00   1st Qu.:0.00000  
##  Median :36932   Mode  :character   Median :45.00   Median :0.00000  
##  Mean   :36518                      Mean   :43.23   Mean   :0.09746  
##  3rd Qu.:54682                      3rd Qu.:61.00   3rd Qu.:0.00000  
##  Max.   :72940                      Max.   :82.00   Max.   :1.00000  
##  heart_disease     ever_married        work_type         Residence_type    
##  Min.   :0.00000   Length:5110        Length:5110        Length:5110       
##  1st Qu.:0.00000   Class :character   Class :character   Class :character  
##  Median :0.00000   Mode  :character   Mode  :character   Mode  :character  
##  Mean   :0.05401                                                           
##  3rd Qu.:0.00000                                                           
##  Max.   :1.00000                                                           
##  avg_glucose_level     bmi            smoking_status         stroke       
##  Min.   : 55.12    Length:5110        Length:5110        Min.   :0.00000  
##  1st Qu.: 77.25    Class :character   Class :character   1st Qu.:0.00000  
##  Median : 91.89    Mode  :character   Mode  :character   Median :0.00000  
##  Mean   :106.15                                          Mean   :0.04873  
##  3rd Qu.:114.09                                          3rd Qu.:0.00000  
##  Max.   :271.74                                          Max.   :1.00000
glimpse(Data_Stroke)
## Rows: 5,110
## Columns: 12
## $ id                <int> 9046, 51676, 31112, 60182, 1665, 56669, 53882, 10434…
## $ gender            <chr> "Male", "Female", "Male", "Female", "Female", "Male"…
## $ age               <dbl> 67, 61, 80, 49, 79, 81, 74, 69, 59, 78, 81, 61, 54, …
## $ hypertension      <int> 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1…
## $ heart_disease     <int> 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0…
## $ ever_married      <chr> "Yes", "Yes", "Yes", "Yes", "Yes", "Yes", "Yes", "No…
## $ work_type         <chr> "Private", "Self-employed", "Private", "Private", "S…
## $ Residence_type    <chr> "Urban", "Rural", "Rural", "Urban", "Rural", "Urban"…
## $ avg_glucose_level <dbl> 228.69, 202.21, 105.92, 171.23, 174.12, 186.21, 70.0…
## $ bmi               <chr> "36.6", "N/A", "32.5", "34.4", "24", "29", "27.4", "…
## $ smoking_status    <chr> "formerly smoked", "never smoked", "never smoked", "…
## $ stroke            <int> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
