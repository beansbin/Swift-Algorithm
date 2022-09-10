import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    // 검사 결과 담을 딕셔너리 생성
    var kbti = ["R": 0, "T": 0, "C": 0, "F": 0, "J": 0, "M": 0, "A": 0, "N": 0]
    
    // survey 돌면서 choices에 따라 딕셔너리 점수 더하기
    for i in 0..<survey.count {
        let notConsent = String(survey[i].prefix(1))
        let consent = String(survey[i].suffix(1))

        if choices[i] < 4 {
            if choices[i] == 1 {
                kbti[notConsent]! += 3
            } else if choices[i] == 2 {
                kbti[notConsent]! += 2
            } else {
                kbti[notConsent]! += 1
            }
        } else if choices[i] > 4 {
            kbti[consent]! += (choices[i] - 4)
        }
    }
    
    var result: [String] = []
    
    let RT = [kbti["R"]!, kbti["T"]!]
    if RT[0] > RT[1] {
        result.append("R")
    } else if RT[0] < RT[1] {
        result.append("T")
    } else {
        let stringList = ["R", "T"].sorted(by: <)
        result.append(stringList[0])
    }
                                       
    let CF = [kbti["C"]!, kbti["F"]!]
    print(CF)
    if CF[0] > CF[1] {
        result.append("C")
    } else if CF[0] < CF[1] {
        result.append("F")
    } else {
        let stringList = ["C", "F"].sorted(by: <) 
        result.append(stringList[0])
    }
    
    let JM = [kbti["J"]!, kbti["M"]!]
    if JM[0] > JM[1] {
        result.append("J")
    } else if JM[0] < JM[1] {
        result.append("M")
    } else {
        let stringList = ["J", "M"].sorted(by: <)
        result.append(stringList[0])
    }
    
    let AN = [kbti["A"]!, kbti["N"]!]
    if AN[0] > AN[1] {
        result.append("A")
    } else if AN[0] < AN[1] {
        result.append("N")
    } else {
        let stringList = ["A", "N"].sorted(by: <)
        result.append(stringList[0])
    }
    
    print(kbti)
    
    return result.joined(separator: "")
}
