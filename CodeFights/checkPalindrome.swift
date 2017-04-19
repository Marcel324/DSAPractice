//This function checks if the string is a palindrome

func checkPalindrome(inputString: String) -> Bool {

for i in 0..<inputString.characters.count / 2 {
 if Array(inputString.characters)[i] != Array(inputString.characters)[inputString.characters.count - 1 - i] {
        return false
    }
}
return true

}