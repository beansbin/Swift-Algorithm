import Foundation

func solution(_ dartResult:String) -> Int {
    var scoreList = dartResult.map {String($0)}
    var scores = Array(repeating: 0, count: 3)
    
    var count = 0
    for i in 0..<scoreList.count {
        print(scores, count, scoreList[i])
        switch scoreList[i] {
            case "1":
            if scoreList[i+1] == "0" {
                print(count)
                scores[count] = 10
            } else {
                scores[count] = 1
            }
            break
            case "2", "3", "4", "5", "6", "7", "8", "9":
            scores[count] = Int(scoreList[i])!
            break
            case "S":
             if i < (scoreList.count - 1) {
                if scoreList[i+1] != "*" && scoreList[i+1] != "#" {
                    count += 1
                }
            }
            break
            case "D":
            scores[count] = Int(pow(Double(scores[count]), 2))
            if i < (scoreList.count - 1) {
                if scoreList[i+1] != "*" && scoreList[i+1] != "#" {
                    count += 1
                }
            }
            break
            case "T":
            scores[count] = Int(pow(Double(scores[count]), 3))
            if i < (scoreList.count - 1) {
                if scoreList[i+1] != "*" && scoreList[i+1] != "#" {
                    count += 1
                }
            }
            break
            case "*":
            if count == 0 {
                scores[count] = scores[count] * 2
            } else {
                for j in count-1...count {
                    scores[j] = scores[j] * 2
                }
            }
            count += 1
            break
            case "#":
            scores[count] = scores[count] * -1
            count += 1
            break
            default:
            count += 0
            continue
        }
    }
    print(scores)
    return scores.reduce(0) {$0 + $1}
}
