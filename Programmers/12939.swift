func solution(_ s:String) -> String {
    let stringArray = s.components(separatedBy: " ")
    let intArray = stringArray.map {Int($0)!}
    var result: [String] = ["", " ", ""]
    
    result[0] = String(intArray.min()!)
    result[2] = String(intArray.max()!)
    return result.joined()
}
