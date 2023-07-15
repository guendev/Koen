//
//  CustomProcessView.swift
//  Koen
//
//  Created by Guen on 15/07/2023.
//

import SwiftUI

struct CustomProcessView: View {
    @State var process: Double
    
    @State var width: CGFloat = .zero
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.text.opacity(0.08))
            .overlay(alignment: .leading) {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.accentColor)
                    .frame(width: CGFloat(process) * width)
            }
            .viewSize(width: $width)
    }
}

struct CustomProcessView_Previews: PreviewProvider {
    static var previews: some View {
        Quiz()
    }
}
