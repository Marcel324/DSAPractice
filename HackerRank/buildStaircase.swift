https://www.hackerrank.com/challenges/staircase?h_r=next-challenge&h_v=zen

func buildStairs(flights: Int) {
    for i in 1...flights {
        let spaces = String(repeating: " ", count: flights - i)
        let hashes = String(repeating: "#", count: i)
        print(spaces + hashes)
    }
}