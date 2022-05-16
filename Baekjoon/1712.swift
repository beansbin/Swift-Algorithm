
import Foundation

var input = readLine()!
var arr = input.components(separatedBy: " ").map({ Int($0)! })
var result = -1

if (arr[2] - arr[1]) != 0 {
  let cost = arr[0] / (arr[2] - arr[1])
  if cost >= 0 {
    result = cost + 1
  }
}

print(result)
