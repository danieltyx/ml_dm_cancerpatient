# 
machine learning + data mining 
## A decision assistant system for doctors


## Abstract:
Cancer is a leading cause of global mortality. Patients with advanced disease are often bedridden for long periods due to physical pain, organ failure, and debilitating treatment regimens. Their limited mobility during treatment is associated with numerous complications, including falls, pressure injuries, and blood clots. This study aims to reduce the incidence of preventable cancer complications by developing a risk monitoring system based on machine learning algorithms. Patient datasets are processed using statistical feature engineering and a modified tree-based gradient boosting lightGBM algorithm to predict individual-level risks of potential complications. Microsoft Azure is employed to build, compute, and connect endpoints. The best performing model reached 98.56%, 97.86%, and 97.20% in accuracy, respectively, for three major complications, falls, pressure injuries, and blood clots in test samples, and an overall 99.86% weighted area under the curve (AUC). The modified lightGBM tree-based model exceeds most existing algorithms regarding explainability and accuracy. Utilizing components like Tkinter, Azure request-response service, and SQLite databases, doctors and patients could easily access real-time analysis metrics and insightful data under low latency. This risk monitoring system can effectively prevent potential life-threatening complications, improve patient quality of life, and provide new ideas for the application of artificial intelligence to the field of health care.


## Details
Data pre-processing:  
1. male1 female0
2. weight height for non-numeric values such as flat cars with mean imputation (162, 59)
3. pupil all 1 meaningless delete
4. blood pressure processing interval value all change to the average value only leave high pressure low pressure
5. all letters are hashed into numbers a=33
6. oxygen saturation compare highest and lowest
7. only the variance of body temperature is kept. the greater the variance, the more severe the fever (number of times, degree)
8. MB marker interval 1/0
9. HX: AV
10. TT: MA Number of headaches recorded



Training Set Accuracy: 97.692308
Testing Set Accuracy: 96.116505
The first row is the theta value of each index for y=1
The second row is the theta value of each index for y=2
The third row is the theta value of each index for y=3

  Columns 1 through 9

    Theta0. consciousness value consciousness frequency cardiac monitoring value cardiac monitoring frequency postural value postural frequency TWVAR MB normal	
    0.0164 0.6534 -0.0050 -0.0261 -0.0097 -0.0229 -0.0578 0.0066 0.0185
    0.0002 0.0020 0.0121 0.0178 -0.0134 0.0170 -0.0210 0.0023 -0.0007
    -0.0032 -0.1146 -0.0153 0.0111 0.0147 -0.0140 0.0339 -0.0042 -0.0031


  Columns 10 through 18

    HXAV TTMA Dressing frequency Primary care frequency YMH normal Skin value Skin frequency Blood pressure AGE	
    0.2634 0.0807 0.0387 -0.1781 0.0197 -0.0027 0.0011 0.0006 0.0907
    0.0071 -0.0107 0.0013 0.0379 -0.0002 -0.0052 -0.0069 0.0006 -0.0071
    -0.0571 -0.0010 -0.0045 -0.0258 -0.0051 0.0141 0.0065 -0.0008 -0.0235


  Columns 19 through 21

```
  SEX SG TZ	
  -0.1172 -0.1733 -0.1042
   -0.0043 -0.0103 0.0197
    0.0272 0.0298 0.0055
```

 
