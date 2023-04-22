//
//  HomeTabView.swift
//  hw-8
//
//  Created by Artyom Tabachenko on 21.04.2023.
//

import SwiftUI

struct HomeTabView: View {
    
    var catalogPageId = 0
    
    @State
    private var animalImageIsPressed: Bool = false
    
    @Binding
    var username: String
    
    @ObservedObject
    var navigationObject: NavigationObject = .init()
    
    var body: some View {
        NavigationStack(path: $navigationObject.path) {
            ZStack {
                Color(.systemGray).ignoresSafeArea()
                VStack(alignment: .center) {
                    Group {
                        Text("Hello, \(username)")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                            .padding()
                        Button("Browse Catalog") {
                            navigationObject.path
                                .append(CatalogPage(id: catalogPageId))
                        }
                        
                        .modifier(GrayButtonModifire())
                        .padding(.trailing, 150)
                        
                        Button("Animal Images") {
                            animalImageIsPressed.toggle()
                        }
                        .modifier(GrayButtonModifire())
                        .padding(.trailing, 150)
                        .fullScreenCover(isPresented: $animalImageIsPressed) {
                            AnimalImageView()
                        }
                        
                    }
                    Spacer()
                }
            }
            .navigationDestination(for: CatalogPage.self) { page in
                BrowseCatalogView(pageId: page.id, navigationObject: navigationObject)
            }
            
        }
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView(username: .constant(""))
    }
}
