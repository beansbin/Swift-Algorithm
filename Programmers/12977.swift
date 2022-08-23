import Foundation

func solution(_ nums:[Int]) -> Int {
    var answer = 0
    let combiList = combination(nums, 3)

    for i in 0..<combiList.count {
        var sum = 0
        for j in 0..<combiList[i].count {
            sum += combiList[i][j]
        }
        var isSosu = false
        for j in 2..<sum {
            if sum % j == 0 {
                break
            }
            if j == sum-1 {
                isSosu = true
            }
        }
        if isSosu {
            answer += 1
        }
    }

    return answer
}

func combination<T: Comparable>(_ array: [T], _ n: Int) -> [[T]] {
    var result = [[T]]()
    if array.count < n { return result }

    var stack = array.enumerated().map { ([$0.element], $0.offset) }

    while stack.count > 0 {
        let now = stack.removeLast()

        let elements = now.0
        let index = now.1

        if elements.count == n {
            result.append(elements.sorted())
            continue
        }

        guard index+1 <= array.count-1 else { continue }

        for i in index+1...array.count-1 {
            stack.append((elements + [array[i]], i))
        }
    }

    return result
}
