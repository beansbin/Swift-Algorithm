import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var first: [Int] = [1, 2, 3, 4, 5]
    var second: [Int] = [2, 1, 2, 3, 2, 4, 2, 5]
    var third: [Int] = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var count: [Int] = [0, 0, 0]
    
    for i in 0..<answers.count {
        let firstRemainder = first[i % 5]
        let secondRemainder = second[i % 8]
        let thirdRemainder = third[i % 10]
        
        if firstRemainder == answers[i] {
            count[0] += 1
        }
        if secondRemainder == answers[i] {
            count[1] += 1
        }
        if thirdRemainder == answers[i] {
            count[2] += 1
        }
    }
    
    var max = count.max()!
    var result: [Int] = []
    for i in 0..<count.count {
        if count[i] >= max {
            max = count[i]
            result.append(i+1)
        }
    }
    
    if result.isEmpty {
        return []
    }
    return result.sorted()
}
