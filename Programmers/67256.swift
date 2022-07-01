import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    let keypad = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9],
        [10, 0, 11]
    ]
    
    var leftIndex = (3, 0)
    var rightIndex = (3, 2)
    var result: [String] = []
    
    for number in numbers {
        let numberIndex = getNumberIndex(keypad, number)
        let leftDistance = calculateDistance(leftIndex, numberIndex)
        let rightDistance = calculateDistance(rightIndex, numberIndex)
        print("\(leftDistance), \(rightDistance)")
        
        if number == 1 || number == 4 || number == 7 {
            leftIndex = numberIndex
            result.append("L")
        } else if number == 3 || number == 6 || number == 9 {
            rightIndex = numberIndex
            result.append("R")
        } else if number == 2 || number == 5 || number == 8 || number == 0 {
            if leftDistance > rightDistance {
                rightIndex = numberIndex
                result.append("R")
            } else if leftDistance < rightDistance {
                leftIndex = numberIndex
                result.append("L")
            } else {
                switch hand {
                    case "left":
                    result.append("L")
                    leftIndex = numberIndex
                    case "right":
                    result.append("R")
                    rightIndex = numberIndex
                    default:
                    continue
                }
            }
        }
    }
    print(result)
    
    return result.joined()
}

func getNumberIndex(_ keypad: [[Int]], _ number: Int) -> (Int, Int)  {
    for i in 0..<keypad.count {
        for j in 0..<keypad[i].count {
            if number == keypad[i][j] {
                return (i, j)
            }
        }
    }
    return (-1, -1)
}

func calculateDistance(_ currentLocation: (Int, Int), _ location: (Int, Int)) -> Int {
    let x = abs(currentLocation.0 - location.0)
    let y = abs(currentLocation.1 - location.1)
    
    return x + y
}
