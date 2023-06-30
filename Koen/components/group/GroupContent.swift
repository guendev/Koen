//
//  GroupContent.swift
//  Koen
//
//  Created by Guen on 26/06/2023.
//

import SwiftUI

struct GroupContent: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            GroupName()
            GroupTab()
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct GroupContent_Previews: PreviewProvider {
    static var previews: some View {
        WordGroupView()
            .environmentObject(WordGroupContext())
    }
}
