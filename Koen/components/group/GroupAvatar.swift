//
//  GroupAvatar.swift
//  Koen
//
//  Created by Guen on 15/07/2023.
//

import SwiftUI

struct GroupAvatar: View {
    var body: some View {
        Rectangle()
            .fill(Color.backgroud2)
            .aspectRatio(12/6, contentMode: .fill)
            .cornerRadius(16)
    }
}

struct GroupAvatar_Previews: PreviewProvider {
    static var previews: some View {
        GroupAvatar()
    }
}
