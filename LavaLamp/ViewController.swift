//
//  ViewController.swift
//  LavaLamp
//
//  Created by Mac on 11/07/23.
//

import UIKit

class ViewController: UIViewController {
    var lavaLayer: CALayer!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var rightImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        createLavaLayer()
        startAnimating()
    }
    
    func createLavaLayer() {
            // Create a CALayer for the lava lamp effect
            lavaLayer = CALayer()
            lavaLayer.bounds = CGRect(x: 0, y: 0, width: 200, height: 200)
            lavaLayer.position = view.center
            lavaLayer.cornerRadius = 100
            lavaLayer.backgroundColor = UIColor.red.cgColor

            // Add the lava layer to the view's layer
            view.layer.addSublayer(lavaLayer)
        }
    
        func startAnimating() {
            // Create a keyframe animation for the lava lamp effect
            let animation = CAKeyframeAnimation(keyPath: "transform.scale")
            animation.values = [1, 2, 1, 2, 1]
            animation.keyTimes = [0.0, 0.25, 0.5, 0.75, 1.0]
            animation.duration = 40
            animation.repeatCount = .infinity
            
            //
            let rotate = CABasicAnimation(keyPath: "transform.rotation")
            rotate.fromValue = 0
            rotate.toValue = CGFloat.pi
            rotate.duration = 40
            rotate.repeatCount = .infinity
            imageView.layer.add(rotate, forKey: "transform.rotation")
//
//            let pos = CAKeyframeAnimation(keyPath: "transform.position")

            // Apply the animation to the lava layer
            imageView.layer.add(animation, forKey: "lavaAnimation")
            rightImage.layer.add(animation, forKey: "lavaAnimation")
        }


}

