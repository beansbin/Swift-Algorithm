import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    // 1. 0을 제외한 나머지 숫자들이 당첨되었다면 해당 숫자들을 지우고 winCount += 1을 한다.
    // 이후 0의 개수를 +, - 하면서 최고, 최저 순위를 계산한다.
    
    var lottoNumbers = lottos
    var winNumbers = win_nums
    var winCount: Int = 0
    var zeroCount: Int = lottoNumbers.filter({ (number: Int) -> Bool in number == 0 }).count
    
    // 1.
    for i in (0..<lottoNumbers.count) {
        if let index = winNumbers.firstIndex(of: lottoNumbers[i]) {
            lottoNumbers[i] = -1
            winNumbers.remove(at: index)
            winCount += 1
        }
    }
    
    // 2.
    var returnList: [Int] = [getLottoRank(winCount + zeroCount), getLottoRank(winCount) < getLottoRank(winCount - zeroCount) ? getLottoRank(winCount) : getLottoRank(winCount - zeroCount)]
    
    return returnList
}

func getLottoRank(_ num: Int) -> Int {
    switch num {
        case 6: return 1
        case 5: return 2
        case 4: return 3
        case 3: return 4
        case 2: return 5
        default: return 6
    }
}
