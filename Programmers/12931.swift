import Foundation

func solution(_ n:Int) -> Int
{
    var answer:Int = 0
    
    let stringN = String(n).map {Int(String($0))!}
    print(stringN)
    
    for i in stringN {
        answer += i
    }
    
    return answer
}
