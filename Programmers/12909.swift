import Foundation

func solution(_ s:String) -> Bool
{
    var ans: Bool = false

    var str = s.map {String($0)}
    var stack: [String] = []
    var point = stack.count - 1
    
    for i in 0..<str.count {
        stack.append(str[i])
        point += 1
        
        if point >= 1 && stack[point - 1] == "(" && stack[point] == ")" {
            stack.popLast()
            stack.popLast()
            point -= 2
        }
    }

    return stack.isEmpty ? true : false
}
