func sqInRect(_ lng: Int, _ wdth: Int) -> [Int]? {
    // your code
    // Test which is shorter length or width
    // Append widths to an array?
    // Choose shorter width (square dimensions)
    // new length = length - width
    // repeat
    // stop when length or width is zero-- while loop?  while length != 0 && width != 0
    if lng == wdth {
      return nil
      }
    
    var sideA = lng
    var sideB = wdth
    var shorter: Int = 0
    var longer: Int = 0
    var squareWidths: [Int] = []

    while sideA != 0 {
      if sideB < sideA {
        shorter = sideB
        longer = sideA
      }
      else { 
        shorter = sideA 
        longer = sideB
        }
      squareWidths.append(shorter)
      sideA = longer - shorter
      sideB = shorter
    }
    
    return squareWidths
}
