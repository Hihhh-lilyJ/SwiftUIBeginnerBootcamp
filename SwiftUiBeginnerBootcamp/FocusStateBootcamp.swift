//
//  FocusStateBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 07/03/2023.
//

import SwiftUI

struct FocusStateBootcamp: View {
    @FocusState private var usernameinFocus: Bool
    @State private var username: String = ""
    @FocusState private var passwordinFocus: Bool
    @State private var password: String = ""
    
    var body: some View {
        VStack{
            TextField("Add user name here...", text: $username)
                .focused($usernameinFocus)
                .padding(.leading)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(.gray).brightness(0.3)
                .cornerRadius(10)
            
            TextField("Add your password here...", text: $password)
                .focused($passwordinFocus)
                .padding(.leading)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(.gray).brightness(0.3)
                .cornerRadius(10)
            
            Button("SIGN UP 🚀") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                if usernameIsValid && passwordIsValid {
                    print("Sign In")
                } else if usernameIsValid {
                    usernameinFocus = false
                    passwordinFocus = true
                } else {
                    usernameinFocus = true
                    passwordinFocus = false
                }
            }
            .padding()
            
//            Button("TOGGLE FOCUS STATE") {
//                usernameinFocus.toggle()
//            }
        }
        .padding(40)
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                self.usernameinFocus = true
            }
        }
    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
