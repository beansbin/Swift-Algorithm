func solution(_ arr:[Int]) -> [Int] {
    var array = arr
    
    if let minValue = arr.firstIndex(of: arr.min()!) {
        array.remove(at: minValue)
        if array.isEmpty {
            return [-1]
        } else {
             return array
        }
    } 
    return [0]
}
