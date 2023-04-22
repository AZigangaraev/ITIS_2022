//
//  Modifiers.swift
//  hw-8
//
//  Created by Artyom Tabachenko on 21.04.2023.
//

import SwiftUI

// MARK: - Modifiers
struct TextFieldModifire: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(height: 60)
            .foregroundColor(.black)
            .font(.system(size: 20))
            .padding(.horizontal, 10)
            .background(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(Color.black, lineWidth: 1)
                    .background(Color.white).cornerRadius(20)
            )
            .padding(.horizontal, 20)
    }
}
struct BlueButtonModifire: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(height: 40)
            .font(.system(size: 20))
            .padding(.horizontal, 30)
            .background(Color.blue)
            .cornerRadius(40)
            .foregroundColor(.white)
            .padding(10)
    }
}

struct GrayButtonModifire: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(height: 60)
            .font(.system(size: 20))
            .padding(.horizontal, 20)
            .background(Color(red: 217/255, green: 217/255, blue: 217/255))
            .cornerRadius(20)
            .foregroundColor(.black)
            .padding(2)
    }
}
