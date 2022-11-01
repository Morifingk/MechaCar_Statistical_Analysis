install.packages("tidyverse")
install.packages("dplyr")
install.packages("ggplot2")
read.csv(file.choose())
#reg <- lm("vehicle_length","vehicle_weight","spoiler_angle","ground_clearance","AWD","mpg"~ bp, data=MechaCar_mpg)
lm(formula =  vehicle_weight ~ vehicle_length, data = MechaCar_mpg)
lm(formula = ground_clearance ~ spoiler_angle, data = MechaCar_mpg)
lm(formula = mpg ~ AWD, data = MechaCar_mpg)
summary(MechaCar_mpg)
 
#read.csv(file.choose())
suspension_data <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)
 
total_summary <- suspension_data %>% summarize(Mean_PSI=mean(PSI),
                                                Median_PSI=median(PSI),
                                                Var_PSI=var(PSI),
                                                Std_Dev_PSI=sd(PSI),
                                                Num_Coil=n(), .groups = 'keep')
lot_summary <- suspension_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                      Median_PSI=median(PSI),
                                                                      Var_PSI=var(PSI),
                                                                      Std_Dev_PSI=sd(PSI),
                                                                      Num_Coil=n(), .groups = 'keep')

?t.test()
?t.test()

t.test(lot_summary$Mean_PSI,mu=1500)

