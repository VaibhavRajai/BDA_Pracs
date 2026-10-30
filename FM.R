```r
# Flajolet-Martin Algorithm in R

# Sample dataset
data <- c("Apple", "Banana", "Mango", "Orange")

# Step 1: Calculate and print hash values
hash_function <- function(x) {
  sum(utf8ToInt(x))
}

hash_values <- sapply(data, hash_function)

cat("1. Hash Values:\n")
print(hash_values)


# Step 2: Find binary equivalent of each hash value
binary_values <- sapply(hash_values, function(n) {
  paste(rev(as.integer(intToBits(n))), collapse = "")
})

# Remove leading zeros from binary representation
binary_values <- sub("^0+", "", binary_values)

cat("\n2. Binary Values:\n")
print(binary_values)


# Step 3: Count trailing zeros
trailing_zeros <- function(n) {
  if (n == 0) {
    return(0)
  }

  count <- 0

  while (n %% 2 == 0) {
    count <- count + 1
    n <- n / 2
  }

  return(count)
}

zero_counts <- sapply(hash_values, trailing_zeros)

cat("\n3. Number of Trailing Zeros:\n")
print(zero_counts)


# Step 4: Estimate distinct elements using 2^R
R <- max(zero_counts)

estimate <- 2^R

cat("\n4. Maximum Trailing Zeros (R):", R, "\n")
cat("Estimated Distinct Elements (2^R):", estimate, "\n")


# Actual distinct elements for comparison
cat("Actual Distinct Elements:",
    length(unique(data)), "\n")
```