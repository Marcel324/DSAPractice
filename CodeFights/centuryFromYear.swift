//This function tells you what century a year is in. 

func centuryFromYear(year: Int) -> Int {
 if year % 100 == 0 {
  return (year / 100)
 } else {
  return (year / 100) + 1
 }
}
