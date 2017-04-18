//It took me a long time to realize I wasn't resetting i = 0 before it jumped into the while loop again.

func thirt(_ n: Int) -> Int {
    // your code
    let remainders = [1, 10, 9, 12, 3, 4]
    var total: Int = 0
    var sums: [Int] = []
    var number: Int = n
    var i: Int = 0
    
    while sums.count < 2 || sums[sums.count - 1] != sums[sums.count-2] {
    
      total = 0
      i = 0
      while number > 0 {
        total += (number % 10) * remainders[i]
        number /= 10
        i += 1
        if i > 5 {
          i = 0
        }
      }
      sums.append(total)
      number = total
    }
    return number
}
