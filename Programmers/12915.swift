func solution(_ strings:[String], _ n:Int) -> [String] {
    var dict: [String: String] = [:]
    
    for i in 0..<strings.count {
        var stringList = strings[i].map {String($0)}
        dict[stringList.joined()] = stringList[n]
    }

    let sortedDict = dict.sorted { (first, second) in
                                     if first.value == second.value {
                                         return first.key < second.key
                                     } 
                                     return first.value < second.value
                                 }
    print(sortedDict)
    
    var result: [String] = []
    for element in sortedDict {
        result.append(element.key)
    }
    return result
}
