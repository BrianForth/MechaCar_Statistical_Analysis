library(dplyr)
mecha_car_mpg <- read.csv("MechaCar_mpg.csv")
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car_mpg) %>% summary()
suspension_coil <- read.csv("Suspension_Coil.csv")
#End Deliverable 1

total_summary <- suspension_coil %>% summarize(Mean = mean(PSI), Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
#End Deliverable 2

t.test(suspension_coil$PSI, mu=mean(suspension_coil$PSI))
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot3")$PSI, mu=1500)
#End Deliverable 3