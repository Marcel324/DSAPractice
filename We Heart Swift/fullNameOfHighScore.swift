//This figures out who has the high score in the dictionary and prints out that player's full name.

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

var highScore = Int.min
var topPlayer = ""

for person in people {
    if highScore < person["score"] as! Int {
        highScore = person["score"] as! Int
        topPlayer = "\(person["firstName"] as! String) \(person["lastName"] as! String)"
    }
}

print(topPlayer)