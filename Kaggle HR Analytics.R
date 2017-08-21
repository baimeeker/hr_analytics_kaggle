library(data.table)
library(caret)
library(ggplot2)

hr_data<-read.csv("HR_comma_sep.csv",header=TRUE)

# Satisfaction Level
# Last evaluation
# Number of projects
# Average monthly hours
# Time spent at the company
# Whether they have had a work accident
# Whether they have had a promotion in the last 5 years
# Departments (column sales)
# Salary
# Whether the employee has left


hr_data_tbl<-data.table(hr_data)
hr_data_tbl$id=seq(1,nrow(hr_data_tbl))
setkey(hr_data_tbl,id)
hr_data_tbl$left=factor(hr_data_tbl$left)

ggplot(hr_data_tbl,aes(sales,fill=left))+stat_count()
#this plot shows visually there are three groups that left.  Poor performers with poor satisfaction, great performers with very poor satisfaction, and great performers with great satisfaction.  
ggplot(hr_data_tbl,aes(last_evaluation,satisfaction_level,color=left))+geom_point()


