//
//  TextEditorBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct TextEditorBootcamp: View {
    @State var TextEditorText: String = "This is the string text"
    @State var savedText: String = ""
    var body: some View {
        NavigationView{
            VStack {
                TextEditor(text: $TextEditorText)
                    .frame(height: 250)
//                    .foregroundColor(.white)
//                    .background(Color.red)
                    .colorMultiply(Color.gray.opacity(0.3))
                    .cornerRadius(10)
                Button(action: {
                    savedText = TextEditorText
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                Text(savedText)
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextEditor Bootcamp!")
        }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
