import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    let sorted = d.sorted(by: <)
    var result = 0
    var sum = 0
    for i in 0..<sorted.count {
        sum += sorted[i]
        if sum <= budget {
            result += 1
        }
    }
    return result
}
