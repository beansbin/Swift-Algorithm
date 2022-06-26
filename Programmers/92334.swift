import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var idArray = [[String]]()
    var stopIdCountDic = [String: Int]()
    for i in id_list {
        stopIdCountDic[i] = 0
    }

    for i in (0..<id_list.count) {
        idArray.append([id_list[i]])
    }
    
    for i in (0..<report.count) {
        let reportAndReported = report[i].split(separator: " ")
        idArray[findIndex(String(reportAndReported[0]), id_list)].append(String(reportAndReported[1]))
    }
    
    var userCountArray: [[String]] = Array(repeating: Array(repeating: "", count: 0), count: id_list.count)
    
    for i in (0..<idArray.count) {
        for j in (1..<idArray[i].count) {
            if !userCountArray[i].contains(idArray[i][j]) {
                  userCountArray[i].append(idArray[i][j])
            }
        }
    }
    
    for i in userCountArray {
        for j in i {
            if stopIdCountDic.keys.contains(j) {
                stopIdCountDic[j]! += 1
            }
        }
    }
    
    var stopIdArray = [String]()
    
    for (key, value) in stopIdCountDic {
        if value >= k {
            stopIdArray.append(key)
        }
    }
    
    var resultArray: [Int] = Array(repeating: 0, count: id_list.count)
    
    for i in (0..<userCountArray.count) {
        for j in (0..<userCountArray[i].count) {
             for k in stopIdArray {
                if userCountArray[i][j] == k {
                    resultArray[i] += 1
                }
            }
        }
    }
    print(userCountArray)

    return resultArray
}

func findIndex(_ findId: String, _ id_list: [String]) -> Int {
    for i in (0..<id_list.count) {
        if findId == id_list[i] {
            return i
        }
    }
    return -1
}
