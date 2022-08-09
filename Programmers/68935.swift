import Foundation

func solution(_ n:Int) -> Int {
    var threeNumberList = String(n, radix: 3).map {String($0)}
    threeNumberList.reverse()
    var threeNumber = threeNumberList.joined()
    return Int(String(Int(threeNumber, radix: 3)!, radix: 10))!
}
