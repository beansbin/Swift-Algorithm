import Foundation

var arr: [Int] = []

while let a = readLine() {
  var input = a.components(separatedBy: " ").map({ Int($0)! })
  print(input[0] + input[1])
}
