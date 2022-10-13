#Deliverable 1:

library(dplyr)

MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(mpg ~ vehicle_weight + vehicle_length + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)
summary(lm(mpg ~ vehicle_weight + vehicle_length + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg))



#Deliverable 2:

Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

?summarise()
# Refer to column names stored as strings with the `.data` pronoun:
# var <- "mass"
# summarise(starwars, avg = mean(.data[[var]], na.rm = TRUE))

total_summary <- summarise(Suspension_Coil, Mean = mean(PSI, na.rm = TRUE),
                           Median = median(PSI, na.rm = TRUE), 
                           Variance = var(PSI, na.rm = TRUE), 
                           SD = sd(PSI, na.rm = TRUE))
total_summary <- data.frame(total_summary)

lot_summary <- Suspension_Coil %>% 
  group_by(Manufacturing_Lot) %>% 
  summarize(Mean = mean(PSI), 
            Median = median(PSI),
            Variance = var(PSI),
            SD = sd(PSI), .groups = "keep")
lot_summary <- data.frame(lot_summary)

#Deliverable 3:
t.test(Suspension_Coil$PSI, mu=1500)

t.test(subset(Suspension_Coil, Manufacturing_Lot =="Lot1")$PSI, mu=1500)
t.test(subset(Suspension_Coil, Manufacturing_Lot =="Lot2")$PSI, mu=1500)
t.test(subset(Suspension_Coil, Manufacturing_Lot =="Lot3")$PSI, mu=1500)
