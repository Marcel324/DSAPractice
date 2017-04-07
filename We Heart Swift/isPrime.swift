var number = 2243

// your code here

extension Int {
    func isPrime() {
        if self == 1 {
            print("not prime")
            return
        }
        var i = 2
        while i < self {
            if self % i == 0 {
                print("not prime")
                return
            }
            i += 1
        }
        print("prime")
    }
}

number.isPrime()
