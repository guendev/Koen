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
    
    func getBg(answer: String) -> Color {
        if answered && answer == userAnswer {
            return answer == self.answer ? .main : .danger
        }
        
        return .clear
    }
    
    func getTextColor(answer: String) -> Color {
        return answered && answer == userAnswer ? .white : .gray
    }
    
    func getStrokeColor(answer: String) -> Color {
        return answered && answer == userAnswer ? getBg(answer: answer) : .gray
    }
    
    var body: some View {
        VStack(spacing: 0) {
            
            Image("eegs")
                .resizable()
                .aspectRatio(1/1, contentMode: .fit)
                .cornerRadius(20)
            
            VStack(spacing: 25) {
                
                ForEach(options, id: \.self) { answer in
                    Button {
                        withAnimation {
                            userAnswer = answer
                        }
                    } label: {
                        Text(answer)
                            .font(.kumbh(size: 16))
                            .fontWeight(.semibold)
                            .applyButton(getBg(answer: answer), block: true)
                            .foregroundColor(getTextColor(answer: answer))
                            .overlay {
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(getStrokeColor(answer: answer).opacity(0.5), lineWidth: 2)
                            }
                    }
                    .disabled(answered)
                }
            }
            .padding(.top, 35)
        }
    }
}

struct PictureQuiz_Previews: PreviewProvider {
    static var previews: some View {
        Quiz()
    }
}
