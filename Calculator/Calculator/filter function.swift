//
//  filter function.swift
//  Calculator
//
//  Created by Diego Estrella III on 11/1/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

func filter(numArray: [Int], closure: (Int) -> Bool) -> [Int] {
    var filterArray = [Int]()
    for num in numArray {
        if closure(num) {
            filterArray.append(num)
        }
    }
    return filterArray
}


