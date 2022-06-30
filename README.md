# Swift-Algorithm
스위프트 알고리즘 풀이 저장소

<!--[![solved.ac tier](http://mazassumnida.wtf/api/generate_badge?boj=beans_bin)](https://solved.ac/beans_bin)-->
[![solved.ac tier](http://mazassumnida.wtf/api/v2/generate_badge?boj=beans_bin)](https://solved.ac/beans_bin)
<!--[![solved.ac tier](http://mazassumnida.wtf/api/mini/generate_badge?boj=beans_bin)](https://solved.ac/beans_bin)-->

### 알고리즘 풀이 링크
[풀이 링크](https://beansbin.notion.site/d9ec6e1b83a44a21b286d5c07908c0f9)
<br/>

### Greedy (탐욕법)
각 단계마다 지금 당장 가장 좋은 방법만을 선택하는 해결 방법
* 동적 계획법보다 수행 시간이 훨씬 빠르다
* 문제 유형을 바로 파악할 수 없는 경우 그리디 알고리즘을 의심
* 기준에 따라 좋은 것을 선택하므로 '가장 큰 순서대로'와 같은 기준을 제시
* 정렬 알고리즘과 같이 출제되는 경향

**최적해를 찾을 수 있는 두 가지 조건**
1) 탐욕법을 사용해도 항상 최적해를 구할 수 있는 경우
2) 시간, 공간적 제약으로 최적해 대신 근사해를 찾아서 해결하는 경우

**Greedy의 특성**
1) 탐욕적 선택 속성 : 항상 각 단계에서 우리가 선택한 답을 포함하는 최적해가 존재하는가?
2) 최적 부분 구조 : 각 단계에서 항상 최적의 선택만을 했을 때, 전체 최적해를 구할 수 있는가?

**[예제 코드 : 동전의 갯수()](https://www.acmicpc.net/problem/11047)**
```Swift
import Foundation

var input = readLine()!.components(separatedBy:" ").map{Int($0)!}
var input2: [Int] = []

for _ in (0..<input[0]) {
  input2.append(Int(readLine()!)!)
}

var count: Int = 0
var n = input[1]

for coin in input2.reversed() {
  count += n / coin
  n %= coin
}

print(count)


```

<br/>

### 구현 문제
* 풀이를 떠올리는 것은 쉽지만 코드로 옮기기 어려운 문제
* 길어지는 소스코드, 특정 소수점 자리 출력, 문자열 파싱 등
* 완전 탐색 : 모든 경우의 수를 다 계산하는 해결 방법
* 시뮬레이션 : 문제에서 제시한 알고리즘을 한 단계씩 차례대로 수행 (ex. 좌표 이동)
* 코딩 테스트에서 그리디 알고리즘과 함께 1, 2번 단골 출제
* 그리디 알고리즘과 묶어서 출제되는 경향

### 참고 링크
[Interview_Question_for_Beginner](https://github.com/JaeYeopHan/Interview_Question_for_Beginner/tree/master/Algorithm)
