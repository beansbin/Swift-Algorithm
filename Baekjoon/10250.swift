import Foundation

var count = Int(readLine()!)!

for _ in 0..<count {
  var input = readLine()!.components(separatedBy: " ").map {Int($0)!}

  let floor = input[2] % input[0]
  let number = Int(input[2] / input[0])

  if floor == 0 {
    print(input[0] * 100 + number)
  } else {
     print((floor * 100) + number + 1)
  }
}
