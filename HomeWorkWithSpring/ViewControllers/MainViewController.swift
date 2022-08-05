//
//  ViewController.swift
//  HomeWorkWithSpring
//
//  Created by Дмитрий Дуров on 04.08.2022.
//

import UIKit
import SpringAnimation

class MainViewController: UIViewController {
    
    @IBOutlet weak var springAnimationView: SpringView!
    @IBOutlet weak var animationLabel: UILabel!
    
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = animation.fullInformation
    }
    
    @IBAction func runButton(_ sender: UIButton) {
        setAnimation()
        
        animation = Animation.getAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}

extension MainViewController {
    private func setAnimation() {
        animationLabel.text = animation.fullInformation
        springAnimationView.animation = animation.preset
        springAnimationView.force = CGFloat(animation.force)
        springAnimationView.curve = animation.curve
        springAnimationView.duration = CGFloat(animation.duration)
        springAnimationView.delay = CGFloat(animation.delay)
        springAnimationView.animate()
    }
}

