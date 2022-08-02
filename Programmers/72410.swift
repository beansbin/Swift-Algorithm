import Foundation

func solution(_ new_id:String) -> String {
    var id = new_id
    
    // 1단계. 소문자로 바꾸기
    id = id.lowercased()
    var idString = id.map {String($0)}

    // 2단계.
    for i in 0..<id.count {
        let asciiValue = Character(idString[i]).asciiValue!

        if (asciiValue <= 122 && asciiValue >= 97)
        || asciiValue == 45 || asciiValue == 46 || asciiValue == 95 || (asciiValue <= 57 && asciiValue >= 48) {
            continue
        }
        idString[i] = ""
    }
    id = idString.joined()
    print(id)
    
    // 3단계
    id = id.replacingOccurrences(of: #"\.{2,}"#, with: ".", options: .regularExpression)
    print(id)
    
    // 4단계.
    idString = id.map {String($0)}
    if idString[0] == "." {
        idString.remove(at: 0)
    }
    if idString.count != 0 && idString[idString.count-1] == "." {
        idString.remove(at: idString.count-1)
    }
    id = idString.joined()
    print(id)
    
    // 5단계.
    if idString.isEmpty {
        idString.append("a")
    }
    print(idString)
    
    // 6단계.
    if idString.count >= 16 {
        var newIdString = Array(idString[0...14])
        if newIdString[newIdString.count - 1] == "." {
            newIdString.remove(at: newIdString.count - 1 )
        }
        idString = newIdString
    }
    print(idString)
    
    // 7단계.
    if idString.count <= 2 {
        var appendedString = idString[idString.count - 1]
        while idString.count <= 2 {
            idString.append(appendedString)
        }
    }
    print(idString)
    
    
    return idString.joined()
}
