public func solution(_ A : inout [Int]) -> Int {
    var array = A.sorted(by: <)

    if array.count == 1 {
        return array[0]
    }

    for i in stride(from: 0, to: array.count, by: 2) {
        if i == array.count - 1 {
            return array[i]
        }
        if array[i] == array[i+1] {
            continue
        } else {
            return array[i]
        }
    }
    return 0
}
