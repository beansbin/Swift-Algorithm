var input = readLine()!.map{ $0 }

var arr = [Int](repeating: 0, count: 26)

// 대소문자 체크 배열 생성
for i in 0..<input.count {
  var code = Character(String(input[i])).asciiValue! - 65
  if code > 26 {
    code -= 32
  }
  arr[Int(code)] += 1
}

// 중복 확인
var max = arr.max()!
var maxIndex = arr.firstIndex(of: max)!
var count = 0
for i in arr {
  if i == max {
    count += 1
  }
}

if count > 1 {
  print("?")
} else {
  print(Character(UnicodeScalar(maxIndex + 65)!))
}

