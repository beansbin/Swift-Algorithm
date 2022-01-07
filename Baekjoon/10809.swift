var inputArr = readLine()!.map { $0 }

var arr: [Int] = [Int](repeating: -1, count: 26)

for i in 0..<inputArr.count {
 let index = Int(inputArr[i].asciiValue! - 97)
  if arr[index] == -1 {
    arr[index] = i
  }
}

for i in arr {
  print(i, terminator: " ")
}
