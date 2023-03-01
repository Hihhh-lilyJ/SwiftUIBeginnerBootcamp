//
//  ExtractedFunctionBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct ExtractedFunctionBootcamp: View {
    
    @State var backgroundcolour: Color = Color.brown
    
    var body: some View {
        ZStack{
            backgroundcolour.edgesIgnoringSafeArea(.all)
            
            contenttLayer
        }
    }
    func buttonPressed() {
        backgroundcolour = .yellow
    }
    
    var contenttLayer: some View{
        VStack{
                        Text("Hello")
                            .font(.headline)
                         Button(action: {
                             buttonPressed()
                         }, label: {
                             Text("Press Me")
                                 .font(.headline)
                                 .foregroundColor(Color.white)
                                 .padding()
                                 .background(Color.black)
                                 .cornerRadius(10)
              })
         }
    }
}

struct ExtractedFunctionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionBootcamp()
    }
}
