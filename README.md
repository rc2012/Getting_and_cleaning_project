---
title: "README"
author: "rc2012"
date: "October 21, 2015"
output: html_document
---
tidydata.txt is a tidy data set generated from the test and train data sets from data collected from the accelerometers from the Samsung Galaxy S smartphone.

The original data can be downloaded from here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

run_analysis.R merges the train and test data sets, extracts the mean and std data, caculates the mean of these variable per subject id and per activity and saves the data frame in tidydata.txt

CodeBook.md describes the variables and the process used in run_analysis.R