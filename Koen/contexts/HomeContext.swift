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
}
