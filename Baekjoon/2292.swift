import Foundation

var input = Int(readLine()!)!
var result = -1

var count = 0
var nowValue = 2
var endValue = 1
while endValue <= 1000000000 {
  endValue = nowValue + (6 * count) - 1
  if input == 1 {
    result = 1
    break
  }
  if input >= nowValue && input <= endValue {
    result = count + 1
    break
  }
  nowValue = endValue + 1
  count += 1
}

print(result)
