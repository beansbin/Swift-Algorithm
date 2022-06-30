import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    // 1. 인형 스택을 만든다.
    // 2. moves 위치로 가서 인형을 뽑아 인형 스택에 넣는다. 이때 행의 처음부터 돌기 시작해 해당 열을 확인했을 때 0이 아닌 숫자를 선택해 넣는다. 끝까지 돌았을 때 0이면 다음 moves로 넘어간다. 뽑은 자리는 0으로 만든다.
    // 3. 스택에 넣어서 이전 인덱스와 일치하면 두 개를 pop()하고 result += 2를 한다.
    
    var board = board
    var stack: [Int] = []
    var result = 0
    let moves = moves.map { $0 - 1 }
    
    
    for col in moves {
        for row in 0..<board.count {
            if board[row][col] != 0 {
                stack.append(board[row][col])
                board[row][col] = 0
                if stack.count > 1 && stack[stack.count - 1] == stack[stack.count - 2] {
                    result += 2
                    stack.removeLast()
                    stack.removeLast()
                }
                break
            } 
        }
    }  
    
    return result
}
