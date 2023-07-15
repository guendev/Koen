//
//  CustomButtonView.swift
//  Koen
//
//  Created by Guen on 15/07/2023.
//

import SwiftUI

enum ButtonDesign {
    case `default`
    case flat
    case border
}


enum ButtonSize {
    case large
    case `default`
    case small
    case mini
}

struct CustomButtonStyleModifier: ViewModifier {
    let block: Bool
    let color: Color
    let design: ButtonDesign
    let size: ButtonSize
    let disabled: Bool
    
    private func getBackgroundColor() -> Color {
        switch design {
        case .default:
            return color
        case .flat:
            return color.opacity(0.2)
        case .border:
            return Color.clear
        }
    }
    
    private func getFont() -> Font {
        switch size {
        case .large:
            return .system(size: 16, weight: .semibold)
        case .default:
            return .system(size: 14, weight: .regular)
        case .small:
            return .system(size: 12, weight: .regular)
        case .mini:
            return .system(size: 10, weight: .regular)
        }
    }
    
    private func getPadding() -> EdgeInsets {
        switch size {
        case .large:
            return EdgeInsets(top: 14, leading: 18, bottom: 14, trailing: 18)
        case .default:
            return EdgeInsets(top: 12, leading: 18, bottom: 12, trailing: 18)
        case .small:
            return EdgeInsets(top: 6, leading: 10, bottom: 6, trailing: 10)
        case .mini:
            return EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8)
        }
    }
    
    private func getBorderWidth() -> CGFloat {
        switch size {
        case .large:
            return 3
        case .default, .small, .mini:
            return 2
        }
    }
    
    func body(content: Content) -> some View {
        content
            .font(getFont())
            .frame(maxWidth: block ? .infinity : .none)
            .foregroundColor(design == .default ? .white : color)
            .padding(getPadding())
            .background(getBackgroundColor())
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .overlay {
                if design == .border {
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(color, lineWidth: getBorderWidth())
                }
            }
            .shadow(color: design == .default ? color.opacity(0.5) : .clear, radius: 20, x: 0, y: 10)
            .opacity(disabled ? 0.35 : 1)
            .animation(.default, value: disabled)
    }
}

extension View {
    func customButtonStyle(block: Bool = false, color: Color, design: ButtonDesign = .default, size: ButtonSize = .default, disabled: Bool = false) -> some View {
        self.modifier(CustomButtonStyleModifier(block: block, color: color, design: design, size: size, disabled: disabled))
    }
}

struct CustomButtonView: View {
    var color: Color = Color(red: 26/255, green: 92/255, blue: 255/255)
    
    var body: some View {
        VStack {
            
            Button(action: {
                // Handle button action
            }) {
                Text("Button")
                    .customButtonStyle(color: color)
            }
            
            Button(action: {
                // Handle button action
            }) {
                Text("Button")
                    .customButtonStyle(block: true, color: color)
            }
            
            Button(action: {
                // Handle button action
            }) {
                Text("Button")
                    .customButtonStyle(color: color, design: .flat)
            }
            
            Button(action: {
                // Handle button action
            }) {
                Text("Button")
                    .customButtonStyle(color: color, design: .border)
            }
            
            Button(action: {
                // Handle button action
            }) {
                Text("Button")
                    .customButtonStyle(color: color, design: .border, size: .mini)
            }
            
            
            Button(action: {
                // Handle button action
            }) {
                Text("Button")
                    .customButtonStyle(color: color, design: .border, size: .small)
            }
            
            Button(action: {
                // Handle button action
            }) {
                Text("Button")
                    .customButtonStyle(color: color, design: .border, size: .large)
            }
        }
    }
}

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        
        CustomButtonView()
        .previewLayout(.sizeThatFits)
        .padding()
        .background(Color.gray.opacity(0.2))
    }
}
