//
//  BorderButton.swift
//  cool-calc
//
//  Created by Guilherme Andre on 28/08/2021.
//

import UIKit

class BorderBottomLeftButton: UIButton {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        updateView()
    }
    
    private func updateView() {
        // This give the height of the current iphone in points
        let screenHeightToUseWhenPortrait = UIScreen.main.bounds.size.height
        // This give the width of the current iphone in points
        let screenHeightToUseWhenLandscape = UIScreen.main.bounds.size.width
        
        // If the height is smaller than 800, this means the iphone is an SE or older. The ones rectangular shape. At least from the info collected in this site: https://www.paintcodeapp.com/news/ultimate-guide-to-iphone-resolutions
        // and https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/adaptivity-and-layout/
        
        if (UIDevice.current.orientation.isLandscape)
        {
            screenSize(size: screenHeightToUseWhenLandscape)
        } else {
            screenSize(size: screenHeightToUseWhenPortrait)
        }
    }
    
    private func screenSize(size: CGFloat) {
        switch size {
            case 800..<1024:
                setRadiusIphones()
            default:
                setRadiusForOlderIphonesAndIpads()
        }
    }
    
    private func setRadiusIphones() {
        radiusCorners(corners: [.bottomLeft], radius: 35)
    }
    
    private func setRadiusForOlderIphonesAndIpads() {
        radiusCorners(corners: [.bottomLeft], radius: 0)
    }
}
