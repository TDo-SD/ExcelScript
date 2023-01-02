library("data.table")

jiraData <- read.csv("JIRA URL")

tableData <- fread(jiraData, select = c("Title", "Purpose", "Assignees", "ID Number", "Date Created"))

write.csv(tableData, "LOCATION", row.names=FALSE)

