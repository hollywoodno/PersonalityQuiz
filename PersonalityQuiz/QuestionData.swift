//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Chris Hurley on 2/15/20.
//  Copyright © 2020 Mayberry, Akyya. All rights reserved.
//

import Foundation

struct QuestionData {
    private let text: String
    private let type: ResponseType
    private let answers: [Answer]
    
}

struct Answer {
    private let text: String
    private let type: AnimalType
}

enum ResponseType {
    case single, multiple, ranged
}

enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    private var definition: String {
        switch self {
        case .dog:
            return "You like barking"
        case .cat:
            return "You like to meow"
        case .rabbit:
            return "You like to bounce"
        default:
            return "You like to move slow"
        }
    }
    
}

