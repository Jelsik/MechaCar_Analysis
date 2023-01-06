# Assignment 16: MechaCar

## 1:Linear Regression to Predict MPG

In the regression, the variables contributing non-random values of variance to MPG would be all of them,
except for spoiler_angle, which had a much higher value.
![Table](https://github.com/Jelsik/MechaCar_Analysis/blob/main/picturesforR/MPGTable.PNG)
The slope of this model would not be considered zero, because of the signifigance of the p-value's size.
The r-squared value rounds to .71, indicating that this is a reasonbly effective model to predict MPG. results
could be improved by potentially removing the spoiler angle from consideration.

## 2:Summary on Suspension Coils

Information pulled on PSI from coils received these results

![Total Table](https://github.com/Jelsik/MechaCar_Analysis/blob/main/picturesforR/TotalPSItable.PNG)

and

![Lot Table](https://github.com/Jelsik/MechaCar_Analysis/blob/main/picturesforR/LotPSItable.PNG)

The design specifies that the standard deviation should not exceed 100 PSI for the coils on MechaCar models.
Although the data collected from the total combination of all construction does meet that expectation, when broken down
into lots we can observe that Lot 3 is running out of specifications. Their Variance value is shown at 170, much higher than
the requested 100

## 3: T-Tests On Suspension Coils

Tests Were performed on the total production, and of the production broken down into their lots

![Total](https://github.com/Jelsik/MechaCar_Analysis/blob/main/picturesforR/TotalLotTTEST.PNG)

![Lot1](https://github.com/Jelsik/MechaCar_Analysis/blob/main/picturesforR/Lot1TTEST.PNG)

![Lot2](https://github.com/Jelsik/MechaCar_Analysis/blob/main/picturesforR/Lot2TTEST.PNG)

![Lot3](https://github.com/Jelsik/MechaCar_Analysis/blob/main/picturesforR/Lot3TTEST.PNG)

Test results are mostly similar, indicating their individual means are quite close the population mean of 1500, except for
Lot3's, where it's p-value is lower than our assumed value, indicating that it has much greater variance than the others.
This is to be expected, as Lot3 was already demonstrated to have outside of required deviation PSI on it's coils previously
in part2.


## 4:Comparing MechaCar to the competition:

In the current customer environment, EVs are becoming more and more available and popular. With gas-prices linked
to current events and trends, people are becoming ever more aware of gas mileaage, and city driving is unavoidable
in the US, and worse on mileage. This would be a good metric to test for against the competition.

Taking into account what we know about our own vehicles, we could collect the specific city MPG information, and
that of our competitor's. A null hypothesis would be to assume that we are keeping up with our competitors, and
therefore our city MPG ought to be similar. By placing our mileage against the mean of their mileage we would answer
that question. If our hypothesis is rejected, we then must consider what factors may be causing that. Performing
more Linear Regression with our vehicle's weights, widths, engine-type, etc and their effect on mileage to that of
the competitor's
