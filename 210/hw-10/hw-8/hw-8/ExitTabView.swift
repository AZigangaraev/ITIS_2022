//
//  ExitTabView.swift
//  hw-8
//
//  Created by Artyom Tabachenko on 21.04.2023.
//

import SwiftUI

struct ExitTabView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @Binding
    var username: String
    
    var body: some View {
        ZStack {
            Color(.systemGray)
                .ignoresSafeArea()
            VStack(alignment: .center, spacing: 100) {
                Group {
                    Text("Hello, \(username)")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .padding()
                    Button("Sign Out") {
                        dismiss()
                    }
                    .modifier(GrayButtonModifire())
                }
                Spacer()
            }
        }
    }
}
struct ExitTabView_Previews: PreviewProvider {
    static var previews: some View {
        ExitTabView(username: .constant(""))
    }
}
