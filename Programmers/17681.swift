func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    var array1 = Array(repeating: Array(repeating: "0", count: n), count: n)
    var array2 = Array(repeating: Array(repeating: "0", count: n), count: n)
    
    for i in 0..<n {
        var binary = String(arr1[i], radix: 2).map {String($0)}
        var binary2 = String(arr2[i], radix: 2).map {String($0)}
        var count = n-1
        for index in stride(from: binary.count-1, through: 0, by: -1) {
            array1[i][count] = binary[index]
            count -= 1
        }
        count = n-1
        for index in stride(from: binary2.count-1, through: 0, by: -1) {
            array2[i][count] = binary2[index]
            count -= 1
        }
    }
    
    for i in 0..<n {
        var result: [String] = []
        for j in 0..<n {
            if array1[i][j] == "1" || array2[i][j] == "1" {
                result.append("#")
            } else if array1[i][j] == "0" && array2[i][j] == "0" {
                result.append(" ")
            }
        }
        answer.append(result.joined())
    }
    
    
    return answer
}
