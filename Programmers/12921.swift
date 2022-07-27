func solution(_ n:Int) -> Int {
    var numberList: [Int] = Array(repeating: 0, count: n + 1)
    for i in 2...n {
        numberList[i] = i
    }

    for i in 2...n {
        if numberList[i] == 0 {
            continue
        }
        
        for j in stride(from: i+i, through: n, by: i) {
            numberList[j] = 0
        }
    }
    let result = numberList.filter { $0 != 0}
    return result.count
}
