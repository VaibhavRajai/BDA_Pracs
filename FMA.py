
# Flajolet-Martin (FM) Algorithm

# Sample dataset
data = ["Apple", "Banana", "Mango", "Orange"]

# Step 1: Calculate and print hash values
def hash_function(x):
    return sum(ord(ch) for ch in x)

hash_values = {}

print("1. Hash Values:")
for item in data:
    h = hash_function(item)
    hash_values[item] = h
    print(item, ":", h)


# Step 2: Find binary equivalent of each hash value
print("\n2. Binary Values:")

binary_values = {}

for item, h in hash_values.items():
    binary_values[item] = bin(h)[2:]
    print(item, ":", binary_values[item])


# Step 3: Count trailing zeros
def trailing_zeros(binary):
    return len(binary) - len(binary.rstrip('0'))

print("\n3. Number of Trailing Zeros:")

zero_counts = {}

for item, binary in binary_values.items():
    zero_counts[item] = trailing_zeros(binary)
    print(item, ":", zero_counts[item])


# Step 4: Calculate 2^R
R = max(zero_counts.values())
estimate = 2 ** R

print("\n4. Maximum Trailing Zeros (R):", R)
print("Estimated Distinct Elements (2^R):", estimate)

# Actual distinct elements
actual = len(set(data))
print("Actual Distinct Elements:", actual)
