import UIKit

let arr: [(String, Int)] = [ ("debbuger", 2), ("interceptor", 3), ("observable", 4), ("subject", 5), ("antipatern", 6) ]

let sortedArray = arr.map { (item) in
    ( item.0, numberExponentiation(Double(item.1)) )
}.filter { $1 % 2 == 0 }.sorted { $0.1 > $1.1 }

func numberExponentiation (_ number: Double = 2, degree: Double = 2) -> Int {
    Int(pow(number, degree))
}

print(sortedArray)
