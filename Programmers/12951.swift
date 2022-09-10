func solution(_ s:String) -> String {
    var stringArr = s.map {String($0)}
    
    for i in 0..<stringArr.count {
        let ascii = Int(Character(stringArr[i]).asciiValue!)
        if i == 0 {
            stringArr[i] = stringArr[i].uppercased()
            continue
        }
        let beforeAscii = Int(Character(stringArr[i-1]).asciiValue!)
        print(beforeAscii, ascii)
        if beforeAscii == 32
           && ((ascii >= 65 && ascii <= 90) || (ascii >= 97 && ascii <= 122)) {
            stringArr[i] = stringArr[i].uppercased()
        } else if beforeAscii >= 48 && beforeAscii <= 57 
                && ((ascii >= 65 && ascii <= 90) || (ascii >= 97 && ascii <= 122)) {
            stringArr[i] = stringArr[i].lowercased()
        } else {
            stringArr[i] = stringArr[i].lowercased()  
        }
    }
    
    return stringArr.joined()
}
