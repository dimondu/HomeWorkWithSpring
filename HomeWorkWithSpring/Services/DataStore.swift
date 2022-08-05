//
//  DataSource.swift
//  HomeWorkWithSpring
//
//  Created by Дмитрий Дуров on 05.08.2022.
//

import SpringAnimation

struct DataStore {
    static let shared = DataStore()
    
    let animationPreset = AnimationPreset.allCases
    let animationCurve = AnimationCurve.allCases
    
    init() {}
}

