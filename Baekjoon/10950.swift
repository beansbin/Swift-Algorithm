import Foundation

var inputNum = Int(readLine()!)!

var arr: [Int] = []

for i in 0..<inputNum {
  var input = readLine()!.components(separatedBy: " ").map({ Int($0)! })
  arr.append(input[0] + input[1])
}

for i in 0..<inputNum {
  print(arr[i])
}
