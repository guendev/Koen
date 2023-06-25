//
//  WordGroup.swift
//  Koen
//
//  Created by Guen on 25/06/2023.
//

import SwiftUI

enum WordDifficulty: String {
    case beginner
    case intermediate
    case advanced
}

struct WordGroup: Identifiable {
    let id: String
    let destination: String
    let difficulty: WordDifficulty
    let image: String
}


// WordGroup objects
let fruitsGroup = WordGroup(id: "1", destination: "Fruits", difficulty: .beginner, image: "fruits.jpg")
let animalsGroup = WordGroup(id: "2", destination: "Animals", difficulty: .intermediate, image: "animals.jpg")
