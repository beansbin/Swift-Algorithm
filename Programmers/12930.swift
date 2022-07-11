func solution(_ s:String) -> String {
    var stringS = s.map {String($0)}
    var newIndex = 0
    for i in 0..<stringS.count {
        if stringS[i] == " " {
            newIndex = 0
            continue
        }
        if newIndex % 2 == 0 {
            stringS[i] = stringS[i].uppercased()
        } else {
            stringS[i] = stringS[i].lowercased()
        }
        newIndex += 1
    }
    return stringS.joined()
}
