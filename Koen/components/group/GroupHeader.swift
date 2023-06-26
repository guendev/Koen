//
//  GroupHeader.swift
//  Koen
//
//  Created by Guen on 26/06/2023.
//

import SwiftUI
import SDWebImageSwiftUI

struct GroupHeader: View {
    var body: some View {
        Rectangle()
            .fill(Color.clear)
            .background {
                WebImage(src: "https://i.imgur.com/EHqRMxW.jpeg")
                    .resizable()
                    .scaledToFill()
            }
    }
}

struct GroupHeader_Previews: PreviewProvider {
    static var previews: some View {
        GroupHeader()
    }
}
