import Foundation

func solution(_ s:String) -> [Int] {
    var result: [Int] = []
    var list: [[Int]] = []
    
    var num = ""
    var temp: [Int] = []
    
    for item in s {
        if String(item) == "{" {
            continue
        } else if String(item) == "," && num != "" {
            if let n = Int(num) {
                temp.append(Int(num)!)
            }
            num = ""
        } else if String(item) == "}"  {
            if let n = Int(num) {
                temp.append(Int(num)!)
                list.append(temp)
                num = ""
                temp = []
            }
        } else if item != "," && item != " " {
            num.append(item)
        }
    }

    let sortedList = list.sorted { $0.count < $1.count }
    var delete: [Int] = []
    
    for i in 0..<list.count {
        var array = sortedList[i].filter { !delete.contains($0) }
        delete.append(array[0])
        result.append(array[0])
    }
    return result
}
