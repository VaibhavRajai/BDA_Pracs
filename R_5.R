data <-data.frame(
    Subject=c(1,2,3,4,5,6),
    Class=c(1,2,1,2,1,2),
    Marks=c(56,75,48,69,84,53)
)

print(data)

# select the rows Subject < 4
result1 <-subset(data,Subject<4)

print("Subjects less than 4: ")
print(result1)

# select subjects < 3 && class==2

result2 <-data[data$Subject <3 & data$Class==2, ]

print("Subject less than 3 and class equals 2: ")
print(result2)