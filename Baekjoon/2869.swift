import Foundation

var input = readLine()!.components(separatedBy:" ").map{Int($0)!}

var day = (input[2] - input[1]) / (input[0] - input[1])

if (input[2] - input[1]) %  (input[0] - input[1]) != 0 {
  print(day + 1)
} else {
  print(day)
}
