//This function does the Euclidian algorithm

func gcd(_ a: Int, _ b: Int) -> Int {
    guard a > 0 else {return b}
    guard b > 0 else {return a}
    
    return a >= b ? gcd(a-b, b) :  gcd(a, b-a)
   }