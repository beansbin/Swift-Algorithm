import Foundation

var input = readLine()
var array = input!.components(separatedBy: " ")

let a = Int(array[0])!
let b = Int(array[1])!

if a > b {
  print(">")
} else if a < b {
  print("<")
} else {
  print("==")
}
