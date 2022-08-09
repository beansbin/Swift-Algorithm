import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var result: [Int: Double] = [:]
    var startCount: [Int] = Array(repeating: 0, count: N + 1)
    
    for i in 1..<startCount.count {
        var count = 0
        for j in 0..<stages.count {
            if stages[j] >= i {
                count += 1
            }
        }
        startCount[i] = count
    }
    
    for i in 1...N {
        var clearCount = 0
        for j in 0..<stages.count {
            if stages[j] == i {
                clearCount += 1
            }
        }
        if clearCount == 0 {
            result[i] = 0
        } else {
            result[i] = Double(clearCount) / Double(startCount[i])
        }
    }
    
    
    var sortResult = result.sorted {(first, second) in
                                      if first.value == second.value {
                                          return first.key < second.key
                                      }
                                      return first.value > second.value 
                                   }
    var realResult: [Int] = []
    for i in sortResult {
        realResult.append(Int(i.key))
    }
    
    return realResult
}
