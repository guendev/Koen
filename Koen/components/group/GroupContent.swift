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
            GroupName()
        }
    }
}

struct GroupContent_Previews: PreviewProvider {
    static var previews: some View {
        WordGroupView()
            .environmentObject(WordGroupContext())
    }
}
