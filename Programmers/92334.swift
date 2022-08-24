import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    
    var result = Array(repeating: 0, count: id_list.count)
    let reportSet = Set(report)
    var userDict: [String: Int] = [:]
    for id in id_list {
        userDict[id] = 0
    }
    
    // 각 유저가 신고
    for item in reportSet {
        let list = item.components(separatedBy: " ")
        userDict[list[1]]! += 1
    }
    
    // 신고된 유저 확인
    let reportedUsers = Array(userDict.filter {$0.1 >= k}.keys)
    for item in reportSet {
        let list = item.components(separatedBy: " ")
        var isContain = false
        for i in 0..<reportedUsers.count where reportedUsers[i] == list[1] {
            for j in 0..<id_list.count {
                if id_list[j] == list[0] {
                    result[j] += 1
                }
            }
            break
        }
    }
    
    return result
}
