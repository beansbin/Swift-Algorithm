var input = Int(readLine()!)!

var count = 0

func isHansoo(num: Int) -> Bool {
  if num < 10 {
    return true
  } else {
    var arr: [Int] = String(num).map{ Int(String($0))! }

    let minus = arr[0] - arr[1]
    for i in 1..<arr.count - 1 {
      if (arr[i] - arr[i + 1]) != minus {
        return false
      }
    }
    
    return true
  }
 
}

for i in 1...input {
  if isHansoo(num: i) {
    count += 1
  }
}

print(count)
