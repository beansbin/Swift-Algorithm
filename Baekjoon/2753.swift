var input = Int(readLine()!)!

 var result = 0
 if input % 4 == 0 {
   if input % 100 != 0 {
     result = 1
   } else if input % 400 == 0 {
     result = 1
   }
 }

 print(result)
