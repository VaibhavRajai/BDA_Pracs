
# Create five numeric vectors
bread <- c(12, 3, 5, 11, 9)
milk <- c(21, 27, 18, 20, 15)
cola_cans <- c(10, 1, 33, 6, 12)
chocolate_bars <- c(6, 7, 4, 13, 12)
detergent <- c(5, 8, 12, 20, 23)

# Display the vectors
print(bread)
print(milk)
print(cola_cans)
print(chocolate_bars)
print(detergent)

# Create a vector for days
days <- c("Monday", "Tuesday", "Wednesday",
          "Thursday", "Friday")

# Visualize the sales of each product
par(mfrow = c(2, 3))

barplot(bread, names.arg = days,
        main = "Bread Sales", col = "lightblue",
        ylab = "Units Sold", las = 2)

barplot(milk, names.arg = days,
        main = "Milk Sales", col = "lightgreen",
        ylab = "Units Sold", las = 2)

barplot(cola_cans, names.arg = days,
        main = "Cola Cans Sales", col = "orange",
        ylab = "Units Sold", las = 2)

barplot(chocolate_bars, names.arg = days,
        main = "Chocolate Bars Sales", col = "pink",
        ylab = "Units Sold", las = 2)

barplot(detergent, names.arg = days,
        main = "Detergent Sales", col = "yellow",
        ylab = "Units Sold", las = 2)

# Reset the plotting layout
par(mfrow = c(1, 1))