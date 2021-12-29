import Foundation

var input = Int(readLine()!)!

var arr: [Int] = [0, 0, 0]

var firstNum = input
var count = 0

while(count < 100) {
  arr[1] = input % 10

  if input > 9 {
    arr[0] = (input - arr[1]) / 10
  } else {
    arr[0] = 0
  }

  arr[2] = arr[0] + arr[1]

  if arr[2] % 10 == 0 {
    arr[2] = 0
  } else if arr[2] > 10 {
    arr[2] = arr[2] % 10
  }

  input = arr[1] * 10 + arr[2]
  count += 1

  if input == firstNum {
    break
  }
}

print(count)
