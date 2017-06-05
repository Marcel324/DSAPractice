//This takes a string that has been encoded using the code dictionary and decodes it. 

var code = [
    "a" : "b",
    "b" : "c",
    "c" : "d",
    "d" : "e",
    "e" : "f",
    "f" : "g",
    "g" : "h",
    "h" : "i",
    "i" : "j",
    "j" : "k",
    "k" : "l",
    "l" : "m",
    "m" : "n",
    "n" : "o",
    "o" : "p",
    "p" : "q",
    "q" : "r",
    "r" : "s",
    "s" : "t",
    "t" : "u",
    "u" : "v",
    "v" : "w",
    "w" : "x",
    "x" : "y",
    "y" : "z",
    "z" : "a"
]

var encodedMessage = "uijt nfttbhf jt ibse up sfbe"

// your code here

var decodedMessage = ""

for character in encodedMessage.characters {
    if character == " " {
        decodedMessage += " "
        continue
    }
    for (key, value) in code {
        if "\(character)" == value {
            decodedMessage += key
            continue
        }
    }
}

print(decodedMessage)