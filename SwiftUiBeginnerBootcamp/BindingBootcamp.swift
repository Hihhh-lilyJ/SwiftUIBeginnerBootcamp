//
//  BindingBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor:Color = Color.gray
    @State var title: String = "Title"
    
    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
            VStack {
                Text(title)
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                
                Buttonview(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct Buttonview : View {
    @Binding var backgroundColor : Color
    @State var buttonColor : Color = Color.black
    @Binding var title: String
    
    var body : some View{
        Button(action: {
            backgroundColor = Color.brown
            buttonColor = Color.blue
            title = "New Title!!!"
        }, label: {
            Text("Button")
                .font(.title)
                .foregroundColor(Color.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
            
        })
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}
