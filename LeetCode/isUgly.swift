//This function tells you if the number is ugly in terms of primes

func isUgly(_ num: Int) -> Bool {
    var pfs = [2,3,5]
    var n = abs(num)
    
    for pf in pfs {
        while n % pf == 0 {
            n = n/pf
        }
    }
    if n > 5 {
        return false
    }
    return true
}
