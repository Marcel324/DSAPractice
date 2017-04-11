import Foundation

// Read the string
let s = readLine()!

    var theTime = s
    var pmCheck = Range(uncheckedBounds: (theTime.index(theTime.startIndex, offsetBy: 8), theTime.endIndex))
    var hourCheck = Range(uncheckedBounds: (theTime.startIndex, theTime.index(theTime.startIndex, offsetBy: 2)))
    
    if theTime.substring(with: pmCheck) == "PM" && theTime.substring(with: hourCheck) != "12" {
        theTime.replaceSubrange(hourCheck, with: "\(Int(theTime.substring(with: hourCheck))! + 12)")
        theTime.removeSubrange(pmCheck)
        print(theTime)
    } else if theTime.substring(with: pmCheck) == "AM" && theTime.substring(with: hourCheck) == "12" {
        theTime.replaceSubrange(hourCheck, with: "00")
        theTime.removeSubrange(pmCheck)
        print(theTime)
    } else {
    theTime.removeSubrange(pmCheck)
    print(theTime)
}