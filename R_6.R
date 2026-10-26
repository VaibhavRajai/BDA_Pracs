
# Create a data frame of 10 employees
employees <- data.frame(
  Sr_No = 1:10,
  Name = c("Vivek", "Karan", "James", "Soham", "Renu",
           "Farah", "Hetal", "Mary", "Ganesh", "Krish"),
  Salary = c(21000, 55000, 67000, 50000, 54000,
             40000, 30000, 70000, 20000, 15000)
)

# Display the data frame
print(employees)

new_employees <- data.frame(
  Sr_No = 11:15,
  Name = c("Amit", "Priya", "Rahul", "Sneha", "Rohan"),
  Salary = c(35000, 45000, 60000, 32000, 48000)
)

# Combine the old and new employee data
employees <- rbind(employees, new_employees)

# Display the updated data frame
print(employees)

barplot(
  employees$Salary,
  names.arg = employees$Name,
  main = "Employee Salary Comparison",
  xlab = "Employee Name",
  ylab = "Salary (Rs.)",
  col = "lightblue",
  las = 2,
  cex.names = 0.7
)