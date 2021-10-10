library(survival)
dta <- read.csv("heart_f.csv")
dta$DEATH_EVENT
dta$high_blood_pressure
dta$serum_creatinine
coxph((Surv(time, DEATH_EVENT))~age+sex+high_blood_pressure+serum_creatinine, data = dta)->fit
fit %>% summary()
library(survival)
library(tidyverse)
setwd("BST_210_Heart_failure")
dta <- read.csv("heart_f.csv")
dta$anaemia %>% table()