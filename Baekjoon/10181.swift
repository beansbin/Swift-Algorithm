import Foundation

var inputNum = Int(readLine()!)!

var arr = readLine()!.split(separator: " ").map{ Int(String($0))! }

arr.sort()
print("\(arr[0]) \(arr[inputNum-1])")
