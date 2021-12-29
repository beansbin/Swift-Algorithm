var arr: [Int] = []

for i in 0..<9 {
  arr.append(Int(readLine()!)!)
}

let max = arr.max()!
let index = arr.firstIndex(of: max)

print(max)
print(index! + 1)
