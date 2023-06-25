//
//  HomeRecomendations.swift
//  Koen
//
//  Created by Guen on 24/06/2023.
//

import SwiftUI

struct HomeRecomendations: View {
    @EnvironmentObject var conext: HomeContext
    
    var body: some View {
        SessionView(title: "Recomendation video") {
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(alignment: .top, spacing: 15) {
                    
                    ForEach(conext.videos) { video in
                        VStack(alignment: .leading, spacing: 12) {
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color("Gray"))
                                .frame(height: 130)
                                .overlay(alignment: .bottomTrailing) {
                                    Button {
                                        
                                    } label: {
                                        Image(systemName: "play.circle.fill")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 48, height: 48)
                                    }
                                    .offset(x: -24, y: 24)

                                }
                            
                            
                            
                            VStack(alignment: .leading) {
                                Text(video.time)
                                    .font(.custom(Poppins.Regular.rawValue, size: 14))
                                
                                Text(video.name)
                                    .font(.custom(Poppins.Medium.rawValue, size: 18))
                            }
                        }
                        .frame(width: 240)
                    }
                    
                }
                .padding(.horizontal)
            }

        }
    }
}

struct HomeRecomendations_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
