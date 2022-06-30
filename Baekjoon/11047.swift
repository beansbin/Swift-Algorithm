import Foundation

// 1. 배열을 내림차순으로 돌면서 해당 값으로 나눴을 때 나머지가 0이면 몫을 result에 더하고 남은 값을 구한다.
// 2. 남은 값이 0이 될 때까지 반복한다.

// 입력값 input1, 2
var input = readLine()!.components(separatedBy:" ").map{Int($0)!}

var input2: [Int] = []

for _ in (0..<input[0]) {
  input2.append(Int(readLine()!)!)
}

// 1.
var result = 0
var currentValue = input[1]
while(currentValue != 0) {
  for item in input2.reversed() {
    if Int(currentValue/item) > 0 {
      let count = Int(currentValue/item)
      result += count
      currentValue -= item * count
      break
    }
  }
}


print(result)
