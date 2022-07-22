import Foundation

func solution(_ n:Int) -> Int {
    var result = n
    for i in 1...1000000 {
        if n % i == 1 {
            result = i
            return result
        }
    }
    return result
}
