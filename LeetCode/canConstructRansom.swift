//This is a slow solution. Attempt to make a *swiftier* one. 

func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
    var ransomNote = Array(ransomNote.characters)
    let magazine = Array(magazine.characters)
    var ransomNoteDict = [Character: Int]()
    var magazineDict = [Character: Int]()
    
    
    for i in ransomNote {
        if ransomNoteDict[i] == nil {
            ransomNoteDict[i] = 1
        } else {
            ransomNoteDict[i]! += 1
        }
    }
    
    for i in magazine {
        if magazineDict[i] == nil {
            magazineDict[i] = 1
        } else {
            magazineDict[i]! += 1
        }
    }
    
    for i in ransomNote {
    if magazineDict[i] == nil {
        return false
    }
        if ransomNoteDict[i]! > magazineDict[i]! {
            return false
        }
    }
    
    return true
}