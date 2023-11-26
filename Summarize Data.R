summary(df_stroke)
##        id           gender          age         hypertension    
##  Min.   :   67   Female:2994   Min.   : 0.08   Min.   :0.00000  
##  1st Qu.:17741   Male  :2115   1st Qu.:25.00   1st Qu.:0.00000  
##  Median :36932   Other :   1   Median :45.00   Median :0.00000  
##  Mean   :36518                 Mean   :43.23   Mean   :0.09746  
##  3rd Qu.:54682                 3rd Qu.:61.00   3rd Qu.:0.00000  
##  Max.   :72940                 Max.   :82.00   Max.   :1.00000  
##                                                                 
##  heart_disease     ever_married         work_type    Residence_type
##  Min.   :0.00000   No :1757     children     : 687   Rural:2514    
##  1st Qu.:0.00000   Yes:3353     Govt_job     : 657   Urban:2596    
##  Median :0.00000                Never_worked :  22                 
##  Mean   :0.05401                Private      :2925                 
##  3rd Qu.:0.00000                Self-employed: 819                 
##  Max.   :1.00000                                                   
##                                                                    
##  avg_glucose_level      bmi               smoking_status     stroke       
##  Min.   : 55.12    N/A    : 201   formerly smoked: 885   Min.   :0.00000  
##  1st Qu.: 77.25    28.7   :  41   never smoked   :1892   1st Qu.:0.00000  
##  Median : 91.89    28.4   :  38   smokes         : 789   Median :0.00000  
##  Mean   :106.15    26.1   :  37   Unknown        :1544   Mean   :0.04873  
##  3rd Qu.:114.09    26.7   :  37                          3rd Qu.:0.00000  
##  Max.   :271.74    27.6   :  37                          Max.   :1.00000  
##                    (Other):4719
glimpse(df_stroke)
## Rows: 5,110
## Columns: 12
## $ id                <int> 9046, 51676, 31112, 60182, 1665, 56669, 53882, 10434…
## $ gender            <fct> Male, Female, Male, Female, Female, Male, Male, Fema…
## $ age               <dbl> 67, 61, 80, 49, 79, 81, 74, 69, 59, 78, 81, 61, 54, …
## $ hypertension      <int> 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1…
## $ heart_disease     <int> 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0…
## $ ever_married      <fct> Yes, Yes, Yes, Yes, Yes, Yes, Yes, No, Yes, Yes, Yes…
## $ work_type         <fct> Private, Self-employed, Private, Private, Self-emplo…
## $ Residence_type    <fct> Urban, Rural, Rural, Urban, Rural, Urban, Rural, Urb…
## $ avg_glucose_level <dbl> 228.69, 202.21, 105.92, 171.23, 174.12, 186.21, 70.0…
## $ bmi               <fct> 36.6, N/A, 32.5, 34.4, 24, 29, 27.4, 22.8, N/A, 24.2…
## $ smoking_status    <fct> formerly smoked, never smoked, never smoked, smokes,…
## $ stroke            <int> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1…
