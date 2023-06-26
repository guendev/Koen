//
//  GroupContent.swift
//  Koen
//
//  Created by Guen on 26/06/2023.
//

import SwiftUI

struct GroupContent: View {
    var body: some View {
        VStack {
            ForEach(0...100, id: \.self) { index in
                Text("Item \(index)")
                    .frame(maxWidth: .infinity, minHeight: 60)
                    .background(RoundedRectangle(cornerRadius: 12).fill(index % 2 == 0 ? Color.blue : Color.yellow))
                    .padding(.horizontal)
            }
        }
    }
}

struct GroupContent_Previews: PreviewProvider {
    static var previews: some View {
        WordGroupView()
            .environmentObject(WordGroupContext())
    }
}
