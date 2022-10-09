import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {   
    var result: [Int] = [0, 0]
    var limit: [String] = []
    
    for i in 0..<words.count {
        if limit.contains(words[i]) {
            result[0] = i % n + 1
            result[1] = i / n + 1
            break
        }
        if i != 0 && words[i-1][words[i-1].index(words[i-1].endIndex, offsetBy: -1)] != words[i][words[i].index(words[i].startIndex, offsetBy: 0)] {
            result[0] = i % n + 1
            result[1] = i / n + 1
            break
        }
        limit.append(words[i])
    }
    return result
}
