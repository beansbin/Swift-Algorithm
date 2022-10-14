func solution(_ n:Int) -> Int {
    var fibo = [0, 1]
  
  for i in 2...n {
    fibo.append((fibo[i-2] + fibo[i-1]) % 1234567)
  }
  
  return fibo[n]
}
