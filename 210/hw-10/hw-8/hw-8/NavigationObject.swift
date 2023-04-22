//
//  NavigationObject.swift
//  hw-8
//
//  Created by Artyom Tabachenko on 21.04.2023.
//

import SwiftUI

class NavigationObject: ObservableObject {
    @Published
    var path: NavigationPath = .init()
}
