MechaCar_mpg <- read.csv('MechaCar_mpg.csv', stringsAsFactors = F) #reading the dataset

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)) #generate summary statistics

total_summary <- Suspension_Coil %>% summarize(mean=mean(PSI), median=median(PSI), Variance =var(PSI), Std_Dev=sd(PSI)) #creating total summary table
 
view(total_summary)

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(mean=mean(PSI), median=median(PSI), Variance =var(PSI), Std_Dev=sd(PSI)) #creating summary lot table
 
view(lot_summary)

t.test(Suspension_Coil$PSI, mu=1500)# testing of popluation 1500

t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot1")$PSI, mu=1500) #Determine if the PSI for Lot 1 is statistically different from the population mean of 1500 psi

t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot2")$PSI, mu=1500) #Determine if the PSI for Lot 2 is statistically different from the population mean of 1500 psi

t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot3")$PSI, mu=1500) #Determine if the PSI for Lot 3 is statistically different from the population mean of 1500 psi
