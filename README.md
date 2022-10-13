# MechaCar Statistical Analysis


## Overview
The goal of this project is to review the production data of AutosRUs’ newest prototype, the MechaCar, to provide insights related to production that may help the manufacturing team solve ongoing problems.

#
## Tools

- Github
- Gitbash
- VS Code
- RStudio

#
## Deliverables
- Deliverable 1: Linear Regression to Predict MPG
- Deliverable 2: Summary Statistics on Suspension Coils
- Deliverable 3: T-Test on Suspension Coils
- Deliverable 4: Design a Study Comparing the MechaCar to the Competition

#
## Linear Regression to Predict MPG:

![Image for Deliverable 1](/PNGs/deliverable_1.png)

1) Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

    Out of the six variables charted, vehicle length and ground clearance showed a non-random amount of variance, which means those two variables have a significant impact on mpg. All other variables showed a random amount of variance as indicated through the p-values.

2) Is the slope of the linear model considered to be zero? Why or why not?
    The slope of the linear model is not zero as suggested by the low p-value for this model (p-value: 5.35e-11).

3) Does this linear model predict the mpg of MechaCar prototypes effectively? Why or why not?
    The r-squared (0.7149) and the adjusted r-squared (0.6825) seem to indicate that the model  is somewhat effective at predicting MechaCar prototypes. 


#
## Summary Statistics on Suspension Coils
![Image for Deliverable 2](/PNGs/Total_Summary.png)

![Image for Deliverable 2](/PNGs/Lot_Summary.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The summary statistics on all lots (62.29 PSI) and specific lot data indicate that the specification was met in Lots 1 (0.97 PSI) and 2 (7.46 PSI), but not for Lot 3, with a variance of 170.28 PSI.

#
## T-Tests on Suspension Coils
![Image for Deliverable 3](/PNGs/t_test_Lots.png)


In addition to the summary statistics, t-tests were also conducted in the total manufacturing summary data as well as each lot:

    - Total manufacturing production:
        p-value = 0.06
        mean = 1498.78
    - Lot 1:
        p-value = 1
        mean = 1500
    - Lot 2:
        p-value = 0.60
        mean = 1500.02

In all three cases, the p-value is higher than the common significance level of 0.05 thus we must fail to reject the null hypothesis.

    - Lot 3:
        p-value = 0.041
        mean = 1496.14

In contrast, the p-value for Lot 3 is below the 0.05 threshold, thus we must reject the null hypothesis.

#
## Study Design: MechaCar vs Competition

1) What metric or metrics are you going to test? 
    
        When talking about cars, safety and performance are one of the most important things to consider. For that reason, we could analyze safety and fuel efficiency to compare MechaCar and its competitors.

2) What is the null hypothesis or alternative hypothesis?

        The null hypothesis is that there is no statistical significance when we compare fuel efficiency and safety ratings. The alternative hypothesis is that there is a significant statistical difference when we compare both parameters.

3) What statistical test would you use to test the hypothesis? And why?

        In this case we have a Sample A vs. a Sample B (dichotomous data type). In order to test the hypothesis a two-sample t-test is recommended. 

4) What data is needed to run the statistical test?

        We could use data from safety tests used to create safety ratings and pair with data on fuel efficiency. 