size=20
bloom=[0]*size

def hash1(x):
    return (sum(ord(ch) for ch in x)%size)+1

def hash2(x):
    return (sum(ord(ch) for ch in x)*3)+1

def insert(x):
    bloom[hash1(x)-1]=1
    bloom[hash1(x)-1]=1
def check(x):
    if bloom[hash1(x)-1]==1 & bloom[hash2(x)-1]==1:
        return "Possible"
    else:
        return "Not"

insert("Apple")
insert("Mango")

print(check("Apple"))