#First import the data set in Posit Compiler , in Files Section choose the dataeset (employees.csv)

data<-read.csv("employees.csv")

#Display
print(data)

summary(data)

#Scatter Plot : Age vs Salary

plot(data$Age,data$Salary,
    main="ScatterPlot: Age vs Salary",
    xlab="Age",
    ylab="Salary",
    col="blue",
    pch=19
)

# 2. BUBBLE CHART: Age vs Salary
symbols(data$Age, data$Salary,
        circles = data$Experience / 10,
        inches = 0.3,
        main = "Bubble Chart: Age vs Salary",
        xlab = "Age",
        ylab = "Salary",
        bg = "lightblue")


# 3. BAR CHART: Employees in Each Department
department_count <- table(data$Department)

barplot(department_count,
        main = "Employees by Department",
        xlab = "Department",
        ylab = "Number of Employees",
        col = "lightgreen")


# 4. DOT PLOT: Employee Performance
dotchart(data$Performance,
         labels = data$Name,
         main = "Employee Performance",
         xlab = "Performance Score",
         pch = 19,
         color = "red")


# 5. HISTOGRAM: Salary Distribution
hist(data$Salary,
     main = "Salary Distribution",
     xlab = "Salary",
     ylab = "Frequency",
     col = "orange",
     border = "black")


# 6. BOX PLOT: Salary by Department
boxplot(Salary ~ Department,
        data = data,
        main = "Salary by Department",
        xlab = "Department",
        ylab = "Salary",
        col = "lightblue")


# 7. PIE CHART: Employees by Department
pie(department_count,
    main = "Employees by Department",
    col = c("red", "yellow", "green", "skyblue"))