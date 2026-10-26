x<-C(23,45,10,34,89,20,67,99)

ascending<-sort(X)
descending<-sort(X,decreasing=TRUE)

print("Ascending Order: ")
print(ascending)


print("Descending Order: ")
print(descending)

#Display the graphs
par(mfrow=c(1,2))


#bar plot
barplot(ascending,
main="Ascending Order",
xlab="Position",
ylab="Value",
col="lightblue"
)

barplot(descending,
        main = "Descending Order",
        xlab = "Position",
        ylab = "Value",
        col = "lightgreen"
)

# Reset graph layout
par(mfrow = c(1, 1))

