import Foundation

func solution(_ n:Int) -> Int {
    var num = n + 1
    var count = String(n, radix: 2).filter { $0 == "1"}.count
    
    while(true) {
        var str = String(num, radix: 2)
        var cnt = 0
        for i in str {
            if i == "1" {
                cnt += 1
            }
        }
        
        if count == cnt {
            break
        }
        num += 1
    }
    
    return num
}
