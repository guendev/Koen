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
        VStack(alignment: .leading, spacing: 10) {
            Text("Figma UI UX Design Essentials")
                .font(.custom(Poppins.SemiBold.rawValue, size: 24))
                .tracking(0.06)
            
            Group {
                
                Text("For ")
                + Text("\(conext.groupWord.difficulty.rawValue.capitalized)")
                    .foregroundColor(Color("Primary"))
            }
            .font(.custom(Poppins.SemiBold.rawValue, size: 14))
            
            
            HStack(spacing: 20) {
                
                HStack(spacing: 3) {
                    Image(systemName: "camera.macro")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15)
                    Text("\(conext.vocabularies.count)")
                        .font(.custom(Poppins.Regular.rawValue, size: 14))

                }
                
                HStack(spacing: 3) {
                    Image(systemName: "clock")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15)
                    Text("72 Hours")
                        .font(.custom(Poppins.Regular.rawValue, size: 14))
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
