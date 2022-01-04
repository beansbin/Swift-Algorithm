var arr: [Int] = [Int](repeating: 0, count: 15000)

func make(_ num: Int) -> Int {
  if num < 10 { // 1~9
    return num
  } else if num < 100 { // 10~99
    // print("\(num) + \(num / 10) + \(num % 10) = \(num + (num / 10) + (num % 10)) ")
    return num + (num / 10) + (num % 10)
  } else if num < 1000 { // 100~999
    let _100 = num / 100
    let _10 = num / 10 - _100 * 10
    let _1 = num % 100 - _10 * 10

    // print("\(num) + \(_100) + \(_10) + \(_1) = \(num + _100 + _10 + _1)")

    return num + _100 + _10 + _1
  } else if num < 10000 { // 1000~9999
    let _1000 = num / 1000
    let _100 = num / 100 - _1000 * 10
    let _10 = num / 10 - (_1000 * 100 + _100 * 10)
    let _1 = num % 1000 - (_100 * 100 + _10 * 10)

    //  print("\(num) + \(_1000) + \(_100) + \(_10) + \(_1) = \(num + _1000 + _100 + _10 + _1)")
    return num + _1000 + _100 + _10 + _1
  } else {
    return 0
  }
}


for i in 0..<10000 {
  let res = make(i)
  // print(res)
  arr[res] = 1
}

arr[1] = 0
arr[3] = 0
arr[5] = 0
arr[7] = 0
arr[9] = 0
arr[10] = 1
arr[12] = 1
arr[14] = 1
arr[16] = 1
arr[18] = 1

for i in 0..<10001 {
  if arr[i] == 0 { print(i) }
}
