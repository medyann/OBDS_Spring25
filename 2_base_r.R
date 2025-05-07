# Workspace management
# Open a new script and write code to create three new objects (any type, any name, any value).
a <- 8.9
b <- "start"
c <- TRUE
# Save your script.

# Save all objects in your workspace to an .RData file.
save.image(file = 'exercise1.RData')
save(a,b,c,d,e,file = "selectivesave.RData")
# Write one object in your workspace to a file using saveRDS().
saveRDS(a, file = "one_object.rds")
# Remove one object from your workspace.
rm(a)
# Prove that the object was removed.
ls()
# Remove all objects from your workspace.
rm(list = ls())
# Display your working directory.
getwd()
# Create a new directory and set the working directory in that new directory.
dir.create('test')
# Restore objects saved in the .RData file to your workspace.
load("exercise1.RData")
# Restore the object saved in the RDS file to your workspace under a diﬀerent name.
e <- readRDS("one_object.rds")

# exercise descriptive statistics
# Use readRDS() to load the file my_day2matrix.rds and assign the object to the name m.
m <- readRDS("/project/shared/r/1_r_data_science/2-base/my_day2matrix.rds")
# Compute the sum of values in each row and add those values as a new column in the matrix.
rowSums(m)
cbind(m, rowsum = rowSums(m))
# Run the command data("ToothGrowth") to load the builtin data set ToothGrowth.
data("ToothGrowth")
# Open the help page for the ToothGrowth data set, to learn more about it.
help("ToothGrowth")
# What is the class of the ToothGrowth object?
class(ToothGrowth)
head(ToothGrowth)
#   What type of data is stored in each column of the ToothGrowth data set?
str(ToothGrowth)
#   What is the mean tooth length across all observations in the data set?
mean(ToothGrowth$len)
#   What is maximum value of tooth length?
max(ToothGrowth$len)
#   What is minimum value of tooth length?
min(ToothGrowth$len)
#   Can you use the functions rowSums() and colSums() on the ToothGrowth object?
rowSums(ToothGrowth)
## Error in rowSums(ToothGrowth) : 'x' must be numeric
colSums(ToothGrowth)
## Error in colSums(ToothGrowth) : 'x' must be numeric


