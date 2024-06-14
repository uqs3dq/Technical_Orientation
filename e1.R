# Problem 1
nums <- 1:1000
total = 0

for(x in nums) {
  if(x%%3 == 0 | x%%5 == 0){
    total = total + x
  }
}

print(total)

# Problem 2
cur = 1
new = 1
total2 = 0

while(new < 4000000){
  temp = cur + new
  cur = new
  new = temp
  
  if(new%%2 == 0){
    total2 = total2 + new
  }
}

print(total2)

# Problem 3
factors = primeFactors(600851475143)
print(factors[length(factors)])
