
//This code takes fractions represented as tuples and adds them together. Remember to find the common denominator

let commonDenominator = a.1 * b.1
let aNumerator = (commonDenominator/a.1) * a.0
let bNumerator = (commonDenominator/b.1) * b.0

let sum = ((aNumerator + bNumerator), commonDenominator)
