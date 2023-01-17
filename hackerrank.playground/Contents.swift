import UIKit

func repeatedString(s: String, n: Int) -> Int {
    let strLength = s.count
    var quotient = 0
    var reminder = 0
    quotient = n / strLength
    reminder = n % strLength
    let partialStringLen = reminder == 0 ? 0 : reminder
    let numberOfAs = quotient * getCharacterCount(s: s, length: s.count) + getCharacterCount(s: s, length: partialStringLen)
    return numberOfAs
}

func getCharacterCount(s: String, length: Int) -> Int {
    let limit = s.index(s.startIndex, offsetBy: length)
    var count = 0
    for index in s.indices {
        if index == limit { break }
        if s[index] == "a" {
            count += 1
        }
    }
    return count
}

print(repeatedString(s: "aba", n: 10))
