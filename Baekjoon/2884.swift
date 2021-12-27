import Foundation

var input = readLine()!

var arr = input.components(separatedBy: " ").map({ Int($0)! })


if arr[1] - 45 < 0 { // 분 - 45 < 0 이라면
  arr[1] = arr[1] - 45 + 60 // 자기 자신에서 45를 빼준 뒤 60을 더해준다.
  if arr[0] - 1 < 0 { // 시 - 1 < 0 이라면
    arr[0] = arr[0] - 1 + 24 // 자기 자신에서 1을 빼준 뒤 24를 더해준다.
  } else {
    arr[0] = arr[0] - 1
  }
} else {
  arr[1] = arr[1] - 45
}

print("\(arr[0]) \(arr[1])")
