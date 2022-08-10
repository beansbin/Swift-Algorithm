import Foundation

func solution(_ s:String) -> Int {
    
    let numberList: [String] = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    var countList: [Int] = []
    var returnValue: [String] = []
    var tempString: String = "" 
    
    var count = 0
    for i in s {
        if let number = Int(String(i)) {
            returnValue.append(String(number))
            continue
        }

        tempString += String(i)
        var value = whatNumber(str: tempString)
        if value != -1 { // 일치하는 경우
            returnValue.append(String(value))
            tempString = ""
        }
       count += 1
    }
    
    return Int(returnValue.joined())!
}

func whatNumber(str: String) -> Int {
     let numberList: [String] = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    
    var count = 0
    for i in numberList {
        if str == i {
            return count
        }
        count += 1
    }
    
    return -1
}
