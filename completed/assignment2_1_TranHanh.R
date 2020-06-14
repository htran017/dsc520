## Assignment: ASSIGNMENT 2.1: American Community Survey
## Name: Tran, Hanh
## Date: 2020-06-14
install.packages ("pastecs")
library (pastecs)

install.packages ("Hmisc")
library (Hmisc)
## Load the ggplot2 package
library(ggplot2)
## Set the working directory to the root of your DSC 520 directory
setwd('C:/Users/hanhk/RProjects/dsc520')

## Load the 'data/acs-14-1yr-s0201.csv' to
survey_df <- read.csv("data/acs-14-1yr-s0201.csv")
head(survey_df)
## Elements in your data, including the categories and data types
## The categories are level of education, High School Degree, Bachelors Degree, Geographic location.
## The data types are categorical and numerical
## Provide the output from the following functions: str(); nrow(); ncol()
str(survey_df)
nrow(survey_df)
ncol(survey_df)
## Create a Histogram of the HSDegree variable using the ggplot2 package
## Set a bin size for the Histogram
## Include a Title and appropriate X/Y axis labels on your Histogram Plot

ggplot(survey_df, aes(x=HSDegree)) + geom_histogram(bins=15) + 
  ggtitle('High School Degree') + xlab('HS Degree') + ylab('Count')

ggplot(survey_df, aes(x=HSDegree)) + geom_density() + ggtitle('High School Degree Normal Curve')
## Answer the following questions based on the Histogram produced:
## Based on what you see in this histogram, is the data distribution unimodal?
## The Data distribution does not appear to be unimodal. 
## Is it approximately symmetrical? The distribution is not symmetrical
## Is it approximately bell-shaped? The distribution is not characterized by the bell-shaped curve.
## Is it approximately normal? Since the distribution is not characterized by the bell-shaped curve, it is not normal.
## If not normal, is the distribution skewed? Yes, it is skewed. 
## If so, in which direction? It is negatively skewed as outliers are more clustered on left. 
## Include a normal curve to the Histogram that you plotted.
## Explain whether a normal distribution can accurately be used as a model for this data.
## A normal distribution can not be accurately used for this data because it does not conform reasonable well to a normal distribution.
## The normal probability model applies when the distribution of the continuous outcome conforms reasonably well to a normal or Gaussian distribution, 
## which resembles a bell shaped curve.
## Create a Probability Plot of the HSDegree variable.

## Answer the following questions based on the Probability Plot:
hsdegree_norm <- qqnorm(survey_df$HSDegree)
hsdegree_line <- qqline(survey_df$HSDegree)
hsdegree_quantiles <- qqplot(survey_df$HSDegree)
## Based on this probability plot, is the distribution approximately normal? Explain how you know. 
## Based on the probability plot the distribution is not approximately normal. A normal probability plot is a 
## plot for a continuous variable that helps to determine whether a sample is drawn from a normal distribution. 
## If the data is drawn from a normal distribution, the points will fall approximately in a straight line. 
## If the data points deviate from a straight line in any systematic way, it suggests that the data is not 
## drawn from a normal distribution.
## If not normal, is the distribution skewed? If so, in which direction? Explain how you know.
## The probability plot looks like the residuals are skewed. Clearly, the condition that the error terms are normally distributed is not met.
## Now that you have looked at this data visually for normality, 
## Quantify normality with numbers using the stat.desc() function.
stat.desc(survey_df)
## Include a screen capture of the results produced.
## In several sentences provide an explanation of the result produced for skew, kurtosis, and z-scores.
## In a normal distribution, skew and kurtosis should be zero. The further away these values are from zero, the more likely our data are not normally distributed.
## Skew: Positive values of skew indicate a pile-up of values on the left of the distribution, which is what we have in our data.
## while negative values of skew indicate the values are piled-up on the right of the distribution.
## Kurtosis: Positive values of kurtosis indicate a pointy and heavy-tailed distribution, whereas negative values indicate a flat and light-tailed distribution.
## By converting skew and kurtosis to z-scores, it is possible to determine how common (or uncommon) the level of skew and kurtosis in our sample truly are. 
## The value of skew.2SE and kurt.2SE are equal to skew and kurtosis divided by 2 standard errors. By normalizing skew and kurtosis in this way, if skew.2SE and kurt.2SE 
## are greater than 1, we can conclude that there is only a 5% chance (i.e. p < 0.05) of obtaining values of skew and kurtosis as or more extreme than this by chance.
## Because these normalized values involve dividing by 2 standard errors, they are sensitive to the size of the sample. 
## In addition, explain how a change in the sample size may change your explanation? 
## by adding to the sample size, it is best to look at the shape of the distribution visually and consider the actual values of skew and kurtosis, not their normalized values.  
  