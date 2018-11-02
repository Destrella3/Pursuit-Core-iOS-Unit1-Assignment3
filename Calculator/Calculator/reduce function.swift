//
//  reduce function.swift
//  Calculator
//
//  Created by Diego Estrella III on 11/1/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

func reduce(numArray: [Int], initialValue: Int, closure:(Int,Int) -> Int) -> Int {
    var sum = initialValue
    for element in numArray {
        sum = closure(sum,element)
    }
    return sum
}

var reduceAdditionClosure = { (firstValue: Int, nextValue: Int) -> Int in
    var sum = 0
    sum = firstValue + nextValue
    return sum
}

var reduceMultiplyClosure = { (firstValue: Int, nextValue: Int) -> Int in
    var sum = firstValue * nextValue
    return sum
}



