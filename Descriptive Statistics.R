# Descriptive Statistics in R


# IMPORT DATA INTO R
my_data <- read.csv(file.choose())



# CHECK THE DATA
# Print the first 6 rows
head(my_data, 6)



# MEASURE OF CENTRAL TENDENCY: MEAN, MEDIAN, MODE
# Compute the mean value
mean(my_data$Birthday)

# Compute the median value
median(my_data$Birthday)

# Compute the mode
# install.packages("modeest")
require(modeest)
mfv(my_data$Birthday)



# MEASURE OF VARIABILITY
# Compute the minimum value
min(my_data$Birthday)

# Compute the maximum value
max(my_data$Birthday)

# Range
range(my_data$Birthday)

# To compute deciles (0.1, 0.2, 0.3, …., 0.9)
quantile(my_data$Birthday, seq(0, 1, 0.1))

# To compute the interquartile range
IQR(my_data$Birthday)

# Compute the variance
var(my_data$Birthday)

# Compute the standard deviation =
# square root of th variance
sd(my_data$Birthday)

# Compute the median absolute deviation
mad(my_data$Birthday)



# COMPUTING AN OVERALL SUMMARY OF A VARIABLE AND AN ENTIRE DATA FRAME
# Summary of a single variable
summary(my_data$Birthday)

# Summary of a data frame
summary(my_data, digits = 1)

# Compute the mean of each column
sapply(my_data[, -1], mean)

# Compute quartiles
sapply(my_data[, -1], quantile)

# install.packages("pastecs")
# Compute descriptive statistics
library(pastecs)
res <- stat.desc(my_data[, -1])
round(res, 2)



# GRAPHICAL DISPLAY OF DISTRIBUTIONS
# Installation and loading ggpubr
install.packages("ggpubr")
library(ggpubr)

# Box Plots
ggboxplot(my_data, y = "Birthday", width = 0.5)

# Histogram
gghistogram(my_data, x = "Birthday", bins = 9, 
            add = "mean")

# Empirical cumulative distribution function (ECDF)
ggecdf(my_data, x = "Birthday")

# Q-Q plots
ggqqplot(my_data, x = "Birthday")




# Frequency tables
# Create some data
# Hair/eye color data
df <- as.data.frame(HairEyeColor)
hair_eye_col <- df[rep(row.names(df), df$Freq), 1:3]
rownames(hair_eye_col) <- 1:nrow(hair_eye_col)
head(hair_eye_col)

# hair/eye variables
Hair <- hair_eye_col$Hair
Eye <- hair_eye_col$Eye

# Simple frequency distribution: one categorical variable
# Frequency distribution of hair color
table(Hair)

# Frequency distribution of eye color
table(Eye)


# Compute table and convert as data frame
df <- as.data.frame(table(Hair))
df

# Visualize using bar plot
library(ggpubr)
ggbarplot(df, x = "Hair", y = "Freq")


# Two-way contingency table: Two categorical variables
tbl2 <- table(Hair , Eye)
tbl2

# Graphics
df <- as.data.frame(tbl2)
head(df)

# Visualize using bar plot
library(ggpubr)
ggbarplot(df, x = "Hair", y = "Freq",
          color = "Eye", 
          palette = c("brown", "blue", "gold", "green"))

# position dodge
ggbarplot(df, x = "Hair", y = "Freq",
          color = "Eye", position = position_dodge(),
          palette = c("brown", "blue", "gold", "green"))

# Multiway Tables: More Than Two categorical variable
xtabs(~Hair + Eye + Sex, data = hair_eye_col)
ftable(Sex + Hair ~ Eye, data = hair_eye_col)



# COMPUTE TABLE MARGINS AND RELATIVE FREQUENCY
## Format of the Functions
margin.table(x, margin = NULL)
prop.table(x, margin = NULL)

## Compute the table Margins
Hair <- hair_eye_col$Hair
Eye <- hair_eye_col$Eye
# Hair/Eye color table
he.tbl <- table(Hair, Eye)
he.tbl

# Margin of rows
margin.table(he.tbl, 1)
# Margin of columns
margin.table(he.tbl, 2)

## COmpute Relative Frequencies
# Frequencies relative to row total
prop.table(he.tbl, 1)
# Table of percentages
round(prop.table(he.tbl, 1), 2)*100

he.tbl/sum(he.tbl)
