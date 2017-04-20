//https://www.hackerrank.com/challenges/compare-the-triplets

//This function compares scores from two different people and returns the count of higher scores

func compareTheTriplets() {
    var aliceScores = readLine()!.components(separatedBy: " ").map {
        Int($0)!
    }
    var bobbyScores = readLine()!.components(separatedBy: " ").map {
        Int($0)!
    }
    var aliceComparisonPoints = 0
    var bobbyComparisonPoints = 0
    for i in 0...aliceScores.count - 1 {
        if aliceScores[i] > bobbyScores[i] {
            aliceComparisonPoints += 1
        }
        if bobbyScores[i] > aliceScores[i] {
            bobbyComparisonPoints += 1
        }
    }
    print("\(aliceComparisonPoints) \(bobbyComparisonPoints)")
}
