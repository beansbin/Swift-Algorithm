import Foundation

var num = Int(readLine()!)!

for i in 0..<num {
  var arr = readLine()!.split(separator: " ").map{ Int($0)! }

  var sum = 0
  for j in 1..<arr.count {
    sum += arr[j]
  }
  var average = sum / arr[0]

  var count = 0
  for j in 1..<arr.count {
    if arr[j] > average {
      count += 1
    }
  }

  var ratio = Double(count) / Double(arr.count-1)

  print(String(format: "%.3f", ratio * 100) + "%")
}

