var N = 30
var fibonacci = [Int]()

// your code here 

for i in 0..<N {
    if fibonacci.isEmpty {
        fibonacci.append(1)
    } else if fibonacci.count == 1 {
        fibonacci.append(1)
    } else {
        fibonacci.append(fibonacci[i-2] + fibonacci[i-1])
    }
}
for i in fibonacci {
    print(i)
}
