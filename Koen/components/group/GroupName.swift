//
//  GroupName.swift
//  Koen
//
//  Created by Guen on 26/06/2023.
//

import SwiftUI

struct GroupName: View {
    
    @EnvironmentObject
    var conext: WordGroupContext
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Figma UI UX Design Essentials")
                .font(.kumbh(size: 24))
                .fontWeight(.semibold)
                .tracking(0.06)
            
            Group {
                
                Text("For ")
                + Text("123456")
                    .foregroundColor(Color("Primary"))
            }
            .font(.kumbh(size: 14))
            .fontWeight(.semibold)
            
            
            HStack(spacing: 20) {
                
                HStack(spacing: 3) {
                    Image(systemName: "camera.macro")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15)
                    Text("123456")
                        .font(.kumbh(size: 14))

                }
                
                HStack(spacing: 3) {
                    Image(systemName: "clock")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15)
                    Text("72 Hours")
                        .font(.kumbh(size: 14))
                }
                
            }
            .foregroundColor(Color.gray)

        }
    }
}

struct GroupName_Previews: PreviewProvider {
    static var previews: some View {
        WordGroupView()
            .environmentObject(WordGroupContext())
    }
}
