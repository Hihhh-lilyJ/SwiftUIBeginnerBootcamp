//
//  ButtonStyleBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 07/03/2023.
//

import SwiftUI

struct ButtonStyleBootcamp: View {
    var body: some View {
        VStack{
            
            Button {
                 
            } label: {
                Text("Button Title")
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
            }
    //      .buttonStyle(.plain)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            Button("Button Title") {
                
            }
            .frame(height: 50)
            .frame(maxWidth: .infinity)
    //      .buttonStyle(.bordered)
            .buttonStyle(.borderedProminent)
            .controlSize(.mini)
            
            Button("Button Title") {
                
            }
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.regular)
            
            Button("Button Title") {
                
            }
            .frame(height: 50)
            .frame(maxWidth: .infinity)
    //      .buttonStyle(.borderless)
            .buttonStyle(.borderedProminent)
            .controlSize(.small)
        }
        .padding()
    }
}

struct ButtonStyleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleBootcamp()
    }
}
