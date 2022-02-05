var input = readLine()!

var array = input.filter({$0 == " "})
var count = array.count + 1

if input[input.startIndex] == " " {
  count -= 1
}
if input[input.index(input.endIndex, offsetBy: -1)] == " " {
  count -= 1
}

print(count) 
