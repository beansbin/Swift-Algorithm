import Foundation

var count = Int(readLine()!)!

 var apartment = Array(repeating: Array(repeating: 1, count: 10), count: 5)

      

for i in 0..<count {
  var floor = Int(readLine()!)!
  var number = Int(readLine()!)!

  var apartment = Array(repeating: Array(repeating: 0, count: number + 1), count: floor + 1)

  for j in 0...floor {
    for k in 1...number {
      if j == 0 {
         apartment[j][k] = k
      } else {
        apartment[j][k] = Array(apartment[j-1][1...k]).reduce(0, +)
      }
    }
  }

  print(apartment[floor][number])
}
