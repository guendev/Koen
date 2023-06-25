//
//  Word.swift
//  Koen
//
//  Created by Guen on 25/06/2023.
//

import SwiftUI

struct Word: Identifiable {
    let id: String
    let destination: String
    let example: String
    let image: String
    let audio: String
    let word: String
    let group: WordGroup
}

// Word objects
let apple = Word(id: "1", destination: "a round fruit with red or green skin and a white inside", example: "I like to eat apples.", image: "apple.jpg", audio: "apple.mp3", word: "apple", group: fruitsGroup)
let banana = Word(id: "2", destination: "a long, curved fruit with a yellow skin and soft inside", example: "I eat a banana every morning for breakfast.", image: "banana.jpg", audio: "banana.mp3", word: "banana", group: fruitsGroup)
let orange = Word(id: "3", destination: "a round fruit with a thick, orange skin and a juicy inside", example: "I love the sweet taste of oranges.", image: "orange.jpg", audio: "orange.mp3", word: "orange", group: fruitsGroup)
let cat = Word(id: "4", destination: "a small, furry animal with whiskers and a tail", example: "My cat likes to play with toys.", image: "cat.jpg", audio: "cat.mp3", word: "cat", group: animalsGroup)
let dog = Word(id: "5", destination: "a domesticated mammal that is commonly kept as a pet or trained for work", example: "I take my dog for a walk every morning.", image: "dog.jpg", audio: "dog.mp3", word: "dog", group: animalsGroup)
let elephant = Word(id: "6", destination: "a large, gray mammal with a long trunk and big ears", example: "Elephants are known for their intelligence and memory.", image: "elephant.jpg", audio: "elephant.mp3", word: "elephant", group: animalsGroup)
