import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var result = 0
    
    for i in left...right {
        if countOfMeasure(i) % 2 == 0 {
            result += i
        } else {
            result -= i
        }
    }
    
    return result
}

func countOfMeasure(_ number: Int) -> Int {
    var count = 0
    for i in 1...number {
        if number % i == 0 {
            count += 1
        }
    }
    return count
}
