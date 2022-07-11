import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var count = 0
    var studentList = Array(repeating: 0, count: n + 1)
    
    for i in 1..<studentList.count {
        if lost.contains(i) && reserve.contains(i) {
            studentList[i] = 1
            continue
        }
        
        if lost.contains(i) {
            continue
        } else if reserve.contains(i) {
            studentList[i] = 2
        } else {
            studentList[i] = 1
        }
    }
    
    for i in 1..<studentList.count {
        if studentList[i] == 0 {
            if i != 1 && studentList[i-1] == 2 {
                studentList[i] += 1
                studentList[i-1] -= 1
            } else if i != studentList.count-1 && studentList[i+1] == 2 {
                studentList[i] += 1
                studentList[i+1] -= 1
            }
        }
    }
    
    for i in 1..<studentList.count {
        if studentList[i] != 0 {
            count += 1
        }
    }
    print(studentList)
    
    return count
}
