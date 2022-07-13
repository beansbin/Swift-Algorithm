import Foundation

func solution(_ s:String) -> String {
    let strList = s.map {$0}
    
    if strList.count == 1 || strList.count == 2 { 
         return s
    } else if strList.count % 2 == 0 { // 4 -> 1, 2, 6 -> 2, 3
        let midIndex = strList.count / 2
        let strIndex1 = s.index(s.startIndex, offsetBy: midIndex-1)
        let strIndex2 = s.index(s.startIndex, offsetBy: midIndex)
        return String(s[strIndex1...strIndex2]) 
    } else { 
        let midIndex = Int(ceil(Double((strList.count)) / Double(2)))
        let strIndex = s.index(s.startIndex, offsetBy: midIndex-1)
        return String(s[strIndex])
    }
}
