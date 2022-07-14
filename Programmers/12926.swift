func solution(_ s:String, _ n:Int) -> String {
    // A = 65, a = 97
    var result: [String] = []
    var listS = s.map {String($0)}
    
    for i in listS {
        let ascii = Int(Character(i).asciiValue!)
        
        if ascii >= 65 && ascii < 91 { // 대문자
            var value = ascii + n
            if value >= 91 {
                value = value - 26
            }
            result.append(String(UnicodeScalar(value)!))
        } else if ascii >= 97 && ascii < 123 { // 소문자
            var value = ascii + n
            if value >= 123 {
                value = value - 26
            }
            result.append(String(UnicodeScalar(value)!))
        } else if ascii == 32 { // 공백
            result.append(" ")
        }
    }
    
    return result.joined()
}
