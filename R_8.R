# 1. Load the dataset
data <- read.csv("C:/Users/vaibhav/Downloads/Supermarket_Data.csv")

# 2. Display the dataset
print(data)

# 3. Display summary statistics
summary(data)

# 4. Check dataset structure
str(data)

# 5. Calculate total sales
total_sales <- sum(data$TotalSales)

cat("Total Sales:", total_sales, "\n")

# 6. Sales by product category
category_sales <- aggregate(
  TotalSales ~ Category,
  data = data,
  sum
)

print(category_sales)

barplot(category_sales$TotalSales,
        names.arg = category_sales$Category,
        main = "Sales by Product Category",
        xlab = "Category",
        ylab = "Total Sales",
        col = "lightblue")

# 7. Quantity sold by product
product_quantity <- aggregate(
  Quantity ~ Product,
  data = data,
  sum
)

print(product_quantity)

barplot(product_quantity$Quantity,
        names.arg = product_quantity$Product,
        main = "Quantity Sold by Product",
        xlab = "Product",
        ylab = "Quantity Sold",
        col = "lightgreen",
        las = 2)

# 8. Sales distribution
hist(data$TotalSales,
     main = "Distribution of Transaction Sales",
     xlab = "Total Sales",
     ylab = "Frequency",
     col = "orange",
     border = "black")

# 9. Sales by payment method
payment_sales <- aggregate(
  TotalSales ~ PaymentMethod,
  data = data,
  sum
)

print(payment_sales)

barplot(payment_sales$TotalSales,
        names.arg = payment_sales$PaymentMethod,
        main = "Sales by Payment Method",
        xlab = "Payment Method",
        ylab = "Total Sales",
        col = "pink")

# 10. Daily sales analysis
data$Date <- as.Date(data$Date)

daily_sales <- aggregate(
  TotalSales ~ Date,
  data = data,
  sum
)

print(daily_sales)

plot(daily_sales$Date,
     daily_sales$TotalSales,
     type = "b",
     main = "Daily Sales Trend",
     xlab = "Date",
     ylab = "Total Sales",
     col = "blue",
     pch = 19)

# 11. Boxplot of transaction sales
boxplot(data$TotalSales,
        main = "Transaction Sales Distribution",
        ylab = "Total Sales",
        col = "lightyellow")

# 12. Identify the highest-selling product by quantity
highest_product <- product_quantity[
  which.max(product_quantity$Quantity),
]

cat("Highest-selling product by quantity:\n")
print(highest_product)
