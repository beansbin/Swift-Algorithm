import Foundation

 var arr: [String] = []
 
for i in 0...1 {
   arr.append(readLine()!)
 }

 var x = Int(arr[0])!
 var y = Int(arr[1])!

if x > 0 {
  if y > 0 {
    print(1)
  } else if y < 0 {
    print(4)
  }
} else if x < 0 {
  if y > 0 {
    print(2)
  } else if y < 0 {
    print(3)
  }
}
