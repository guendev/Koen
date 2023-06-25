//
//  HomeContext.swift
//  Koen
//
//  Created by Guen on 24/06/2023.
//

import SwiftUI

class HomeContext: ObservableObject {
    @Published
    var categories: [Category] = [
        Category(id: "1", name: "Travel"),
        Category(id: "2", name: "Health"),
        Category(id: "3", name: "Technology"),
        Category(id: "4", name: "Business"),
        Category(id: "5", name: "Education"),
        Category(id: "6", name: "Environment")
    ]
    
    @Published
    var videos: [Video] = [
        Video(id: "1", name: "Learn English through TV Shows", time: "4 h 32 min"),
        Video(id: "2", name: "English Pronunciation Practice for Beginners", time: "4 h 32 min"),
        Video(id: "3", name: "Business English Vocabulary and Phrases", time: "4 h 32 min")
    ]
    
    @Published
    var openedLession: Bool = false
}
