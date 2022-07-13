func solution(_ s:String) -> Int {
    let firstIndex = s.startIndex
    
    if s.count == 1 {
        return Int(s)!
    } else if s[firstIndex] == "+" {
        let secondIndex = s.index(s.startIndex, offsetBy: 1)
        let finalIndex = s.index(s.endIndex, offsetBy: -1)
        let stringNumber = s[secondIndex...finalIndex]

        return Int(String(stringNumber))!
    } else if s[firstIndex] == "-" {
        let secondIndex = s.index(s.startIndex, offsetBy: 1)
        let finalIndex = s.index(s.endIndex, offsetBy: -1)
        let stringNumber = s[secondIndex...finalIndex]

        return -Int(String(stringNumber))!
    } else {
        return Int(s)!
    }
}
