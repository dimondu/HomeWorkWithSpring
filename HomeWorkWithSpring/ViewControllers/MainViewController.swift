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
    @IBOutlet weak var animationLabel: UILabel! {
        didSet {
            animationLabel.text = animation.fullInformation
        }
    }
    
    private var animation = Animation.getAnimation()
    
    @IBAction func runButton(_ sender: UIButton) {
        animationLabel.text = animation.fullInformation
        setAnimation()
        
        animation = Animation.getAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}

extension MainViewController {
    private func setAnimation() {

        springAnimationView.animation = animation.preset
        springAnimationView.force = animation.force
        springAnimationView.curve = animation.curve
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        springAnimationView.animate()
    }
}

