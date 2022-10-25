let unsortedstring = ["will", "fish", "Cat", "bat"]

// Add your code below:
func swap(string: inout [String], firstIndex: Int, secondIndex: Int){
    let temp = string[firstIndex]
    string[firstIndex] = string[secondIndex]
    string[secondIndex] = temp
}
func sort () {
    var tempCount = 0
    var totalCount = 0
    var functionInvoke = true
    var unsortedArray = unsortedstring
    print("Pass: \(0), Swaps: \(tempCount)/\(totalCount), Array: \(unsortedArray)")
    while(functionInvoke){
        for i in 0 ..< unsortedArray.count{
            for j in 1 ..< unsortedArray.count - i{
                if(unsortedArray[j].lowercased() < unsortedArray[j-1].lowercased()){
                    functionInvoke = true
                    tempCount += 1
                    totalCount += 1
                    swap(string:&unsortedArray, firstIndex:j, secondIndex:j-1)
                }
            }
            print("Pass: \(i+1), Swaps: \(tempCount)/\(totalCount), Array: \(unsortedArray)")

            if(tempCount == 0){
                functionInvoke = false
                break
            }
            tempCount = 0
        }
    }
}
sort()

/*var words = string

white let line = readLine() {
    words.append(line)
}

print("Working really hard to reverse order")
for word in words.reversed() {
    print(word)
}*/
