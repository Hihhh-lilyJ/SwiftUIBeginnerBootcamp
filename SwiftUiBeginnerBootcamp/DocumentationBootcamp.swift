//
//  DocumentationBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 06/03/2023.
//

import SwiftUI

struct DocumentationBootcamp: View {
    @State var data: [String] = [
        "apple", "orange", "pineapple"
    ]
    @State var showAlert:Bool = false
    var body: some View {
        NavigationView{
            ZStack {
                Color.gray.opacity(0.5).ignoresSafeArea(.all)
                foregroundLayer
                    .navigationTitle("Documentation Bootcamp")
                    .navigationBarItems(
                        trailing: Button(
                            "ALERT",action: {
                                showAlert.toggle()
                        })
                   )
                    .alert(isPresented: $showAlert, content: {
                        getAlert(text: "This is the text")
                })
            }
        }
    }
    private var foregroundLayer: some View {
        ScrollView{
            Text("Hello")
            ForEach(data, id: \.self) {
                name in
                Text(name)
            }
        }
    }
    func getAlert(text: String) -> Alert{
        return Alert(title: Text(text))
    }
}

struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
