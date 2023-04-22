//
//  ContentView.swift
//  hw-8
//
//  Created by Artyom Tabachenko on 06.04.2023.
//

import SwiftUI

//MARK: - UI
struct ContentView: View {
    @State
    var username: String = ""
    @State
    var password: String = ""
    @State
    private var showAlert: Bool = false
    @State
    private var allertMessage: String = ""
    @State
    private var isPressed: Bool = false
    @State
    private var isFormValid: Bool = false
    
    var body: some View {
        ZStack {
            Color(.systemGray)
                .ignoresSafeArea()
            VStack(alignment: .center, spacing: 20) {
                Image(systemName: "person.text.rectangle")
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                TextField("Username", text: $username)
                    .modifier(TextFieldModifire())
                SecureField("Password", text: $password)
                    .modifier(TextFieldModifire())
                Button(action: validateForm) {
                    Text("Submit")
                        .modifier(BlueButtonModifire())
                        .opacity(isPressed ? 0.6 : 1.0)
                        .scaleEffect(isPressed ? 1.1 : 1.0)
                        .onTapGesture { validateForm() }
                        .pressEvents {
                            withAnimation(.easeIn(duration: 0.2)) {
                                isPressed = true
                            }
                        } onRelease: {
                            withAnimation {
                                isPressed = false
                            }
                        }
                }
                .alert(allertMessage, isPresented: $showAlert) {
                    if isFormValid == false {
                        Button("Clear All") {
                            username = ""
                            password = ""
                        }
                        Button("Clear username") {
                            username = ""
                        }
                        Button("Clear password") {
                            password = ""
                        }
                    }
                }
                .fullScreenCover(isPresented: $isFormValid) {
                    TabView {
                        HomeTabView(username: $username)
                            .tabItem {
                                Label("Home", systemImage: "house")
                            }
                        ExitTabView(username: $username)
                            .tabItem {
                                Label("Exit", systemImage: "clear")
                            }
                    }
                }
                Spacer()
            }
        }
    }
    //MARK: - Validation
    private func validateForm() {
        if username == "Admin" && password == "Admin" {
            allertMessage = "You succesfully loged in!😎"
            isFormValid = true
        } else {
            allertMessage = "YOU'RE A LOSER!🧌"
            showAlert = true
        }
    }
}
//MARK: - Provider
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
