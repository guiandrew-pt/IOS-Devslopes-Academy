//
//  Extensions.swift
//  Cool Cars
//
//  Created by Guilherme Andre on 01/09/2021.
//

import UIKit

extension UIView {
    func addRoundedBorder() {
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.darkGray.cgColor
        layer.cornerRadius = 20
    }
}
