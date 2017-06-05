//This goes through the people dictionary, then prints out a scoreboard starting with the highscore. 

var people: [[String:Any]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton",
        "score": 13
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie",
        "score": 23
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera",
        "score": 10
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno",
        "score": 3
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen",
        "score": 16
    ]
]

// your code here

var nameWithScore = [(String, Int)]()

for person in people {
    nameWithScore.append(("\(person["firstName"] as! String) \(person["lastName"] as! String)", person["score"] as! Int))
}

nameWithScore = nameWithScore.sorted { (firstTuple, secondTuple) -> Bool in
   return firstTuple.1 > secondTuple.1
}

for (index, person) in nameWithScore.enumerated() {
    print("\(index + 1). \(person.0) - \(person.1)")
}
