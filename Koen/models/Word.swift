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
let strawberry = Word(id: "7", destination: "a small, red fruit with a sweet taste", example: "I love to eat strawberries with whipped cream.", image: "strawberry.jpg", audio: "strawberry.mp3", word: "strawberry", group: fruitsGroup)
let watermelon = Word(id: "8", destination: "a large, round fruit with a green skin and red inside", example: "I like to eat watermelon on a hot day.", image: "watermelon.jpg", audio: "watermelon.mp3", word: "watermelon", group: fruitsGroup)
let peach = Word(id: "9", destination: "a small, round fruit with fuzzy skin and a sweet, juicy inside", example: "I like to eat peaches in the summertime.", image: "peach.jpg", audio: "peach.mp3", word: "peach", group: fruitsGroup)
let pineapple = Word(id: "10", destination: "a tropical fruit with a tough, spiky skin and sweet, juicy inside", example: "I like to eat pineapple on pizza.", image: "pineapple.jpg", audio: "pineapple.mp3", word: "pineapple", group: fruitsGroup)
let mango = Word(id: "11", destination: "a sweet, juicy tropical fruit with a yellow or orange skin", example: "I like to eat mango in smoothies.", image: "mango.jpg", audio: "mango.mp3", word: "mango", group: fruitsGroup)
let kiwi = Word(id: "12", destination: "a small, oval fruit with brown fuzzy skin and green inside", example: "I like to eat kiwi with yogurt.", image: "kiwi.jpg", audio: "kiwi.mp3", word: "kiwi", group: fruitsGroup)
let grape = Word(id: "13", destination: "a small, round fruit with a thin skin and juicy inside", example: "I like to eat grapes as a snack.", image: "grape.jpg", audio: "grape.mp3", word: "grape", group: fruitsGroup)
