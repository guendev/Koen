//
//  Game.swift
//  Koen
//
//  Created by Guen on 30/06/2023.
//

import SwiftUI

struct Game: View {
    var body: some View {
        VStack(spacing: 20) {
            
            
            VStack(spacing: 10) {
                HStack {
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "xmark")
                            .fontWeight(.bold)
                            .foregroundColor(.secondary)
                    }

                    
                    Spacer()
                    
                    
                    HStack(spacing: 4) {
                        Text("36")
                            .font(.kumbh(size: 14))
                            .fontWeight(.medium)
                        Image(systemName: "camera.macro")
                            .font(.footnote)
                    }
                    .foregroundColor(Color("Primary"))
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                    .background {
                        Color("Primary")
                            .opacity(0.2)
                    }
                    .cornerRadius(10)
                    
                }
                
                
                HStack {
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.gray.opacity(0.2))
                        .frame(height: 12)
                        .overlay(alignment: .leading) {
                            
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("Primary"))
                                .frame(width: 100)
                            
                        }
                    
                }
            }
            .padding(.horizontal)
            
            VStack(alignment: .leading) {
                Text("1234")
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            
            VStack {
                Button {
                    
                } label: {
                    Text("CONTINUE")
                        .font(.kumbh(size: 16))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .applyButton(block: true)
                }
            }
            .padding(.horizontal)

            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background {
            Color.white
        }
    }
}

struct Game_Previews: PreviewProvider {
    static var previews: some View {
        Game()
    }
}
