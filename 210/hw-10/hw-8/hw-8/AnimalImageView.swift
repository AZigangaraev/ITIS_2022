//
//  AnimalImageView.swift
//  hw-8
//
//  Created by Artyom Tabachenko on 21.04.2023.
//

import SwiftUI

struct AnimalImageView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color(.systemGray)
                .ignoresSafeArea()
            

            
            
            VStack {
                HStack() {
                    Button("Back") {
                        dismiss()
                    }
                    .font(.system(size: 20))
                    .padding(.trailing, 35)
                    .foregroundColor(.white)
                    
                    Text("Animal Image")
                        .font(.system(size: 30))
                        .padding(.trailing, 100)
                        .foregroundColor(.white)
                }
                Spacer()
                Image("monkey")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250.0, height: 250.0, alignment: .center)
                    .clipShape(Circle())
                Spacer()
            }
            
        }
    }
}

struct AnimalImageView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalImageView()
    }
}
