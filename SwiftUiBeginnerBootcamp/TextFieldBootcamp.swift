//
//  TextFieldBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    Button(action: {
                        if textIsAppropriate() {
                            saveText()
                        }
                    }, label:{
                        Text("Save".uppercased())
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(textIsAppropriate() ? Color.blue : Color.gray)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                            .font(.headline)
                    })
                    .disabled(!textIsAppropriate())
                ForEach(dataArray, id: \.self) {
                    data in Text(data)
                }
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp!")
        }
    }
    
    func textIsAppropriate() -> Bool {
        // check text
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
