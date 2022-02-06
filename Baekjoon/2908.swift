var arr = readLine()!.split(separator: " ")
var newArr: [Int] = []

for i in arr {
  var temp = ""
  for j in i.reversed(){
    temp += String(j)
  }
  newArr.append(Int(temp)!)
}

newArr[0] > newArr[1] ? print(newArr[0]) : print(newArr[1])
