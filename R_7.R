data<-read.csv("C:\Users\Vaibhav\Downloads\employees.csv")

print(head(data))

summary(data)

str(data)

# check strucure and missing value
colSums(is.na(data))

churn_count<-table(data$Exited)

print("Customer Churn Count: ")
print(churn_count)

barplot(churn_count,
    main="Customer Churn Distribuition",
    xlab="Exited (0=No,1=Yes)",
    ylab="Number of Customers",
    col=c("lightgreen","tomato"))

gender_churn<-table(data$Gender,data$Exited)

print("Churn by Gender")
print(gender_churn)

churn_percentage<-prop.table(churn_count)*100

churn_rate<-mean(data$Exited,na.rm=TRUE)*100