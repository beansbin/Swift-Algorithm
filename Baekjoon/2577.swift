var arr: [Int] = []

for i in 0..<3 {
  arr.append(Int(readLine()!)!)
}

var multiple: String = String(arr[0] * arr[1] * arr[2])

var mulArr: [Character] = multiple.map { $0 }

var resultArr: [Int] = [Int](repeating: 0, count: 10)

for i in 0..<10 {
  if mulArr.contains(Character(String(i))) {
    for j in mulArr {
      if Character(String(i)) == Character(String(j)) {
        resultArr[i] += 1
      }
    }
    
  }
}

for i in resultArr {
  print(i)
}


