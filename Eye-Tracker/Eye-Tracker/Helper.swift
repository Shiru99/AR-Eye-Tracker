//
//  Helper.swift
//  Eye-Tracker
//
//  Created by Shriram Ghadge on 27/06/23.
//

import SwiftUI
import UIKit

struct Device {
    static var screenSize: CGSize {
        
        let screenWidthPixel: CGFloat = UIScreen.main.nativeBounds.width
        let screenHeightPixel: CGFloat = UIScreen.main.nativeBounds.height
        
        let ppi: CGFloat = UIScreen.main.scale * 163 // Assuming a standard PPI value of 163
        
        let a_ratio=(1125/458)/0.0623908297
        let b_ratio=(2436/458)/0.135096943231532

        return CGSize(width: (screenWidthPixel/ppi)/a_ratio, height: (screenHeightPixel/ppi)/b_ratio)
    }
    
    static var frameSize: CGSize {  // iPhone XR 414,814
        return CGSize(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height - 82)
    }
}

struct Ranges {
    static let widthRange: ClosedRange<CGFloat> = (0...Device.frameSize.width)
    static let heightRange: ClosedRange<CGFloat> = (0...Device.frameSize.height)
}

extension CGFloat {
    func clamped(to: ClosedRange<CGFloat>) -> CGFloat {
        return to.lowerBound > self ? to.lowerBound
            : to.upperBound < self ? to.upperBound
            : self
    }
}

/// Reference - https://github.com/virakri/eye-tracking-ios-prototype

