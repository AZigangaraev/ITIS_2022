//
//  BrowseCatalogView.swift
//  hw-8
//
//  Created by Artyom Tabachenko on 22.04.2023.
//

import SwiftUI

struct BrowseCatalogView: View {
    
    var pageId: Int
    
    @ObservedObject
    var navigationObject: NavigationObject
    
    var body: some View {
        NavigationStack(path: $navigationObject.path) {
            ZStack {
                Color(.systemGray)
                    .ignoresSafeArea()
                VStack(alignment: .center, spacing: 40) {
                    Text("Catalog, Page: \(pageId)")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .padding()
                    Button("Browse Catalog") {
                        navigationObject.path.append(CatalogPage(id: pageId))
                    }
                    .modifier(GrayButtonModifire())
                    .padding(.trailing, 160)
                    Spacer()
                }
            }
        }
        .navigationDestination(for: CatalogPage.self) { page in
            BrowseCatalogView(pageId: page.id + 1, navigationObject: navigationObject)
        }
    }
}

struct BrowseCatalogView_Previews: PreviewProvider {
    static var previews: some View {
        BrowseCatalogView(pageId: 1, navigationObject: .init())
    }
}
