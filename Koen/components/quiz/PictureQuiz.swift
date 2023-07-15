//
//  PictureQuiz.swift
//  Koen
//
//  Created by Guen on 02/07/2023.
//

import SwiftUI

struct PictureQuiz: View {
    
    var answer: String = "Egg"
    var options: [String] = ["Hello", "Bread", "Egg", "Pasta"]
    
    @State var userAnswer: String = ""
    
    var answered: Bool {
        return !userAnswer.isEmpty
    }
    
    var isCorrectAnswer: Bool {
        return userAnswer == answer
    }
    
    func getButtonColor(answer: String) -> Color {
        if answered && answer == userAnswer {
            return answer == self.answer ? .accentColor : .danger
        }
        return .text.opacity(0.2)
    }
    
    func getTextColor(answer: String) -> Color {
        return answered && answer == userAnswer ? .white : .text
    }
    
    func getButtonDesign(answer: String) -> ButtonDesign {
        return answered && answer == userAnswer ? .default : .border
    }
    
    var body: some View {
        VStack(spacing: 50) {
            
            Image("eegs")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .cornerRadius(20)
            
            VStack(spacing: 30) {
                
                ForEach(options, id: \.self) { answer in
                    Button {
                        withAnimation {
                            userAnswer = answer
                        }
                    } label: {
                        Text(answer)
                            .font(.callout)
                            .foregroundColor(getTextColor(answer: answer))
                            .fontWeight(.semibold)
                            .padding(.vertical, 4)
                            .customButtonStyle(block: true, color: getButtonColor(answer: answer), design: getButtonDesign(answer: answer))
                    }
                    .disabled(answered)
                }
            }
        }
    }
}

struct PictureQuiz_Previews: PreviewProvider {
    static var previews: some View {
        Quiz()
    }
}
