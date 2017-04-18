func stockList(_ listOfArt: [String], _ listOfCat: [String]) -> String {
    // your code
    // for i in listOfCat
    // store the letter in a dictionary
    //for i in listOfArt
    // store each entry as a string
    // array separated by " "
    // if the letter equals the category, add to the int dictionary entry
    // convert array[1] to int
    if listOfArt.isEmpty || listOfCat.isEmpty {
      return ""
    }
    var quantityOfEachCat: [Int] = []
    var quantity: Int = 0
    for i in listOfCat {
        let category = Character(i)
        quantity = 0
        for i in listOfArt {
            let bookNameAndNumber: [String] = i.components(separatedBy: " ")
            let book: String = bookNameAndNumber[0]
            let numberOfBooks: Int = Int(bookNameAndNumber[1])!
            if category == book[book.startIndex] {
                quantity += numberOfBooks
            }
            
        }
        quantityOfEachCat.append(quantity)
    }
    var catAndQuantity: String = ""

    for i in 0...(listOfCat.count - 1) {
        catAndQuantity += "(\(listOfCat[i]) : \(quantityOfEachCat[i])) - "
        
    }
    let catAndQuantityTrunc: String = catAndQuantity.substring(to: catAndQuantity.index(catAndQuantity.endIndex, offsetBy: -3))
    return catAndQuantityTrunc
}
