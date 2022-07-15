func solution(_ s:String) -> String {
    let stringList = s.map {$0}
    var asciiList: [Int] = []
    var totalList: [Int] = []
    
    for i in stringList {
        asciiList.append(Int(i.asciiValue!))
    }
    
    var lowerCaseList: [Int] = []
    var upperCaseList: [Int] = []
    
    // 대문자 : 65 ~ 90
    // 소문자 : 97 ~ 122
    for i in asciiList {
        if i >= 65 && i <= 90 {
            upperCaseList.append(i)
        } else {
            lowerCaseList.append(i)
        }
    }
    
    lowerCaseList.sort(by: >)
    upperCaseList.sort(by: >)
    
    totalList += lowerCaseList
    totalList += upperCaseList
    
    var result: [String] = []
    
    for i in totalList {
        result.append(String(UnicodeScalar(i)!))
    }
    
    return result.joined()
}
