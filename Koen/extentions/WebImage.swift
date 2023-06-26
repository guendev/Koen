//
//  SDWebImageSwiftUI.swift
//  Koen
//
//  Created by Guen on 26/06/2023.
//

import SwiftUI
import SDWebImageSwiftUI

extension WebImage {
    init(src: String) {
        self.init(url: URL(string: src))
    }
}
