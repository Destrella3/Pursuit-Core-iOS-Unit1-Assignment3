//
//  map function.swift
//  Calculator
//
//  Created by Diego Estrella III on 11/1/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

func map(numArray: [Int], closure: (Int) -> Int) -> [Int] {
    var mapArray = [Int]()
    for number in numArray {
        let result = closure(number)
        mapArray.append(result)
    }
    return mapArray
}

let mapClosure = { (firstString: String) -> Int in
    let answer = Int(firstString)
    var newAnswer = 0
    if let string = answer {
        newAnswer = string
    }
    return newAnswer
}

