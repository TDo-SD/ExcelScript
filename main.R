#This is the package used to make the code
library("data.table")

#This is the intake data frame received from the JIRA dashboard CSV
jiraData <- read.csv("JIRA URL")

#This is the data frame created after a quick filter of what's needed. The dashboard is constantly updating so this is all
#that is need for our intents and purposes.
tableData <- fread(jiraData, select = c("Title", "Purpose", "Assignees", "ID Number", "Date Created"))

#This writes the csv into the file I need and exports it as a csv.
write.csv(tableData, "LOCATION", row.names=FALSE)

