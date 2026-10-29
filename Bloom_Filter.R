# Initialize Bloom Filter
size <- 20
bloom <- rep(0, size)

# Hash Function 1
hash1 <- function(x) {
  (sum(utf8ToInt(x)) %% size) + 1
}

# Hash Function 2
hash2 <- function(x) {
  (sum(utf8ToInt(x)) * 3 %% size) + 1
}

# Insert an element into Bloom Filter
insert <- function(x) {
  bloom[hash1(x)] <<- 1
  bloom[hash2(x)] <<- 1
}

# Check whether an element may exist
check <- function(x) {
  if (bloom[hash1(x)] == 1 &&
      bloom[hash2(x)] == 1) {
    return("Possibly Present")
  } else {
    return("Definitely Not Present")
  }
}

# Insert elements
insert("Apple")
insert("Banana")
insert("Mango")

# Display Bloom Filter
cat("Bloom Filter:\n")
print(bloom)

# Search elements
cat("\nChecking Apple:", check("Apple"), "\n")
cat("Checking Banana:", check("Banana"), "\n")
cat("Checking Orange:", check("Orange"), "\n")