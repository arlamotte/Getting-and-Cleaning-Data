# Getting-and-Cleaning-Data

Tidy data obtained from Human "Activity Recognition Using Smartphones Dataset"

Script run_analysis.R will generate a the tidy_data.txt file at the work directory.

To run this script the pakages plyr,tidyr,dplyr and sqldf are necessary. You need to run the script at the home directory of the UCI HAR Dataset.

The script will load the relevant tables. Based on the activity_labels and features tables the script will reshape the data on to test and traning tables using the sqldf package to join all the data.

The Tables Test and Train will be unified and all Average values will be calculated.
