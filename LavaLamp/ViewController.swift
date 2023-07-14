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
        imageView.startAnimation(scale: true, rotate: false, scaleDuration: 3, scaleRepeatCount: 2)
        
    }
}

