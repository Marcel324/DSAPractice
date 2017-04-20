//https://www.hackerrank.com/challenges/birthday-cake-candles

import Foundation

var n = readLine()!
var candles = readLine()!
var arrayOfCandles = candles.components(separatedBy: " ").map {
            Int($0)!
        }
var candleDictionary: [Int: Int] = [:]
for i in arrayOfCandles {
   if candleDictionary[i] == nil {
      candleDictionary[i] = 1
   } else {
      candleDictionary[i]! += 1
   }
}

print(candleDictionary[candleDictionary.keys.max()!]!)

