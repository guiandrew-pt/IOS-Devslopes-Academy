//
//  ExtensionMethodForUIButton.swift
//  cool-calc
//
//  Created by Guilherme Andre on 30/08/2021.
//

import UIKit

// Extended method
extension UIButton {
    func radiusCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}
