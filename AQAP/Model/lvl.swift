//
//  lvl.swift
//  AQAP
//
//  Created by Edgar Backer on 2023-03-31.
//

import Foundation

enum DifficultyLevel: Int {
    case easy = 0
    case intermediate = 1
    case hard = 2
    
    func gameTime() -> Int {
        switch self {
        case .easy:
            return 60
        case .intermediate:
            return 40
        case .hard:
            return 20
        }
    }
}

