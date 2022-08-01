import Foundation

var input = readLine()!.components(separatedBy: " ").map {Int($0)!}

var count = 1
var secondCount = 1
var isBreak = false
var index = [1, 1]

while count < input[0] {
  // Right
  index[1] += 1
  count += 1
  if count == input[0] {
    break
  }

  // Left Down
  for i in 0..<secondCount {
    index[0] += 1
    index[1] -= 1
    count += 1
    if count == input[0] {
      isBreak = true
      break
    }
  }

  if isBreak {
    break
  }
  secondCount += 1
  
  // Down
  index[0] += 1
  count += 1
  if count == input[0] {
    break
  }

  // Right Up
   for i in 0..<secondCount {
    index[0] -= 1
    index[1] += 1
    count += 1
    if count == input[0] {
      isBreak = true
      break
    }
  }

  if isBreak {
    break
  }
  secondCount += 1
  
}

print("\(index[0])/\(index[1])")
