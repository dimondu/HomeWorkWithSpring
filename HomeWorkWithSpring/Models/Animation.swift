//
//  Animation.swift
//  HomeWorkWithSpring
//
//  Created by Дмитрий Дуров on 05.08.2022.
//
struct Animation {
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var fullInformation: String {
        return """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%0.2f", force))
        duration: \(String(format: "%0.2f", duration))
        delay:  \(String(format: "%0.2f", delay))
        """
    }
    
    static func getAnimation() -> Animation {
        Animation(
            preset: DataStore.shared.animationPreset.randomElement()?.rawValue ?? "wobble",
            curve: DataStore.shared.animationCurve.randomElement()?.rawValue ?? "easeIn",
            force: Float.random(in: 1.0...3.8),
            duration: Float.random(in: 1.0...2.1),
            delay: Float.random(in: 0.1...0.3)
        )
    }
}
