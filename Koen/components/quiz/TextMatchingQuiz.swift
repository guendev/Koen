//
//  TextMatcherQuiz.swift
//  Koen
//
//  Created by Guen on 15/07/2023.
//

import SwiftUI

struct TextMatchingQuiz: View {
    
    var resource: [Vocabulary] = [
        appleVocabulary,
        bananaVocabulary,
        orangeVocabulary,
        strawberryVocabulary,
        watermelonVocabulary
    ]
    
    @State var column1: [Vocabulary] = []
    @State var column2: [Vocabulary] = []
    
    @State var currentIndex1: Int?
    @State var currentIndex2: Int?
    
    @State var resloved1: [Int] = []
    @State var resloved2: [Int] = []
    
    @State var isError: Bool = false
    @State var isComparing: Bool = false
    
    func compareSelectedVocabularies() {
        isComparing.toggle()
        
        guard let currentIndex1 = currentIndex1, let currentIndex2 = currentIndex2 else {
            return
        }
        
        let selected1 = column1[currentIndex1]
        let selected2 = column2[currentIndex2]
        
        // Compare the selected vocabularies
        if selected1.id == selected2.id {
            // Matched!
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                withAnimation {
                    resloved1.append(currentIndex1)
                    resloved2.append(currentIndex2)
                    self.currentIndex1 = nil
                    self.currentIndex2 = nil
                    isComparing.toggle()
                }
            }
        } else {
            // Not matched
            withAnimation {
                isError.toggle()
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                withAnimation {
                    self.isError.toggle()
                    self.currentIndex1 = nil
                    self.currentIndex2 = nil
                    isComparing.toggle()
                }
            }
        }
    }
    
    func clickHandler(column: Int, value: Int) -> Void {
        if isComparing {
            return
        }
        
        withAnimation {
            if column == 1 {
                currentIndex1 = currentIndex1 == value ? nil : value
            } else {
                currentIndex2 = currentIndex2 == value ? nil : value
            }
        }
        
        if currentIndex1 != nil && currentIndex2 != nil {
            compareSelectedVocabularies()
        }
    }
    
    func getCurrentState(value: Int, selected: Int?) -> Color {
        if selected != value {
            return .gray
        }
        
        return isError ? .danger : .accentColor
    }
    
    @ViewBuilder
    func OptionButton(label: String, column: Int, value: Int) -> some View {
        Button {
            
            clickHandler(column: column, value: value)
            
        } label: {
            Text(label)
                .customButtonStyle(block: true, color: getCurrentState(value: value, selected: column == 1 ? currentIndex1 : currentIndex2), design: .border, disabled: column == 1 ? resloved1.contains(value) : resloved2.contains(value))
        }
        .disabled(column == 1 ? resloved1.contains(value) : resloved2.contains(value))
    }
    
    
    var body: some View {
        
        VStack {
            
            Text("The buttons are a fundamental part of any project")
                .font(.callout)
                .padding(.bottom, 40)
                .foregroundColor(.text2)
            
            
            HStack(spacing: 50) {
                
                VStack(spacing: 20) {
                    
                    ForEach(Array(column1.enumerated()), id: \.element.id) { index, vocabulary in
                        
                        OptionButton(label: vocabulary.word.word, column: 1, value: index)
        
                    }
                    
                    
                }
                .frame(maxWidth: 150)
                
                
                VStack(spacing: 20) {
                    
                    ForEach(Array(column2.enumerated()), id: \.element.id) { index, vocabulary in
                        
                        OptionButton(label: vocabulary.destination, column: 2, value: index)
                    }
                    
                }
                .frame(maxWidth: 150)
                
            }
        }
        .onAppear {
            column1 = resource.shuffled()
            column2 = resource.shuffled()
        }
    
        
    }
}

struct TextMatcherQuiz_Previews: PreviewProvider {
    static var previews: some View {
        Quiz()
    }
}
