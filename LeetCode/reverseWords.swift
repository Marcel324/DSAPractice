https://leetcode.com/submissions/detail/99697502/

//Reverse Each Word In String

func reverseWords(_ s: String) -> String {
        var reversedString = ""
        var stringArray = s.components(separatedBy: " ")
       
        for i in 0..<stringArray.count {
            for character in stringArray[i].characters.reversed() {
                reversedString += String(character)
            }
            if i != stringArray.count - 1 {
                reversedString += " "
            }
        }

     return reversedString   
    }