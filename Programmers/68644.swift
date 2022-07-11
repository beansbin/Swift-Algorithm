import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var resultArr: [Int] = []
    
    for i in 0..<numbers.count-1 {
        for j in i+1..<numbers.count {
            resultArr.append(numbers[i] + numbers[j])
        }
    }
    
    let setResult = Set(resultArr)
    
    return Array(setResult).sorted()
}
