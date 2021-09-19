//
//  Wage.swift
//  window-shopper
//
//  Created by Guilherme Andre on 23/08/2021.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
