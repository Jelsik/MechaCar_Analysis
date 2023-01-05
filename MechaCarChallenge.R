#part 1
library(dplyr) #establish library
library(tidyverse)

carsDF <- read.csv("MechaCar_mpg.csv")
?lm #starting linear regression

#gathering test
carsTest <- lm(formula = mpg ~ 
                 vehicle_length
                +vehicle_weight
                +spoiler_angle
                +ground_clearance
                +AWD
                ,
                data = carsDF)

carsTest

lmSummary <- summary(carsTest)

lmSummary

rvalue <- lmSummary$r.squared
pvalue <- 5.35e-11

#part 2, create visualizations for suspension coils

#import
coilDF <- read_csv("Suspension_Coil.csv")
#summarize stats for whole DF
total_summary <- coilDF %>%  summarise(mean = mean(coilDF$PSI),
                           median = median(coilDF$PSI),
                           Variance = var(coilDF$PSI),
                           SD = sd(coilDF$PSI))
#grouping by lot
lot_summary <- coilDF %>% group_by(Manufacturing_Lot) %>% 
                     summarise(mean = mean(PSI),
                                    median = median(PSI),
                                    Variance = var(PSI),
                                    SD = sd(PSI))

#part 3 T-testing

totalT <- t.test(coilDF$PSI, 
                 mu=1500)
totalT
#breaking up by lots
lot1subset <- subset(coilDF, Manufacturing_Lot == "Lot1",
                     select = PSI)
lot1subset

lot1T <- t.test(lot1subset, mu=1500)
lot1T

#breaking up by lots
lot2subset <- subset(coilDF, Manufacturing_Lot == "Lot2",
                     select = PSI)
lot2subset

lot2T <- t.test(lot2subset, mu=1500)
lot2T

#breaking up by lots
lot3subset <- subset(coilDF, Manufacturing_Lot == "Lot3",
                     select = PSI)
lot3subset

lot3T <- t.test(lot3subset, mu=1500)
lot3T

