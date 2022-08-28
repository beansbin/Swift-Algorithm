public func solution(_ A : inout [Int]) -> Int {
    if A.isEmpty {
        return 1
    }

    let array = A.sorted(by: <)

    if array[0] != 1 {
        return 1
    }
    
    if array.count == 1 {
        return array[0] + 1
    }
    
    
    for i in 0..<array.count-1 {
        if array[i+1] == array[i] + 1 {
            continue
        } else {
            return array[i] + 1
        }
    }
    
    return array[array.count-1] + 1
}
