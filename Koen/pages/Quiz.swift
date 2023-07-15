//
//  Quiz.swift
//  Koen
//
//  Created by Guen on 30/06/2023.
//

import SwiftUI

struct Quiz: View {
    var body: some View {
        VStack(spacing: 40) {
            
            
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
                
                
                CustomProcessView(process: 0.5)
                    .frame(height: 12)
            }
            .padding(.horizontal)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    // PictureQuiz()
                    TextMatcherQuiz()
                }
                .padding(.horizontal)
            }
            
//            VStack {
//                Button {
//                    
//                } label: {
//                    Text("CONTINUE")
//                        .customButtonStyle(block: true, color: .accentColor, size: .large)
//                }
//            }
//            .padding(.horizontal)

            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background {
            Color.backgroud
                .ignoresSafeArea()
        }
    }
}

struct Quiz_Previews: PreviewProvider {
    static var previews: some View {
        Quiz()
    }
}
