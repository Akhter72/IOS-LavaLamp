//
//  UIAnimation.swift
//  DynamicAmination
//
//  Created by Mac on 14/07/23.
//

import Foundation
import UIKit

class CustomAnimationView: UIImageView {
}

extension UIImageView {
    
    func startAnimation(scale: Bool, rotate: Bool, scaleValues: [Int] = [1, 2, 1, 2, 1], scaleKeyTimes: [NSNumber] = [0.0, 0.25, 0.5, 0.75, 1.0], scaleDuration: CFTimeInterval = 40, scaleRepeatCount: Float = .infinity) {
        if scale {
            let scaleAnimation = CAKeyframeAnimation(keyPath: "transform.scale")
            scaleAnimation.values = scaleValues
            scaleAnimation.keyTimes = scaleKeyTimes
            scaleAnimation.duration = scaleDuration
            scaleAnimation.repeatCount = scaleRepeatCount
            self.layer.add(scaleAnimation, forKey: "lavaAnimation")
        }
        if rotate {
            let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
            rotateAnimation.fromValue = 0
            rotateAnimation.toValue = CGFloat.pi
            rotateAnimation.duration = 40
            rotateAnimation.repeatCount = .infinity
            self.layer.add(rotateAnimation, forKey: "transform.rotation")
        }
    }
}
