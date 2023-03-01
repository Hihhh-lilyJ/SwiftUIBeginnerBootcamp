//
//  NavigationBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct NavigationBootcamp: View {
    var body: some View {
        NavigationView{
            ScrollView{
                NavigationLink("Hello, World" , destination: MyOtherScreen() )
                
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
                
            }
            .navigationTitle("All in boxes")
            .navigationBarItems(
                        leading:
                            HStack {
                                Image(systemName: "person.fill")
                                Image(systemName: "flame.fill")
                            },
                        trailing:
                        NavigationLink(destination: MyOtherScreen(), label: {
                                    Image(systemName: "gear")
                    })
                        .accentColor(.red)
              )
        }
        
    }
}

struct MyOtherScreen: View{
    @Environment (\.presentationMode) var presentationMode
var body : some View{
    ZStack{
        Color.gray.opacity(0.5)
            .edgesIgnoringSafeArea(.all)
            .navigationTitle("Green Screen")
//            .navigationBarHidden(true)
        VStack{
            Button("Back Button") {
                presentationMode.wrappedValue.dismiss()
            }
            .font(.title3)
            .foregroundColor(Color.black)
            .padding()
            .background(Color.white.cornerRadius(20))
            .padding()
            NavigationLink("Click Here",
                destination: Text("Touch"))
            .padding()
            .background(Color.white)
            .cornerRadius(20)
            .foregroundColor(Color.black)
            .font(.body)
             }
        }
    }
}

//struct ThirdPage : View{
//    var body: some View {
//        ZStack{
//            Color.green.edgesIgnoringSafeArea(.all)
//            NavigationLink("Touch", destination: Text("Hello"))
//        }
//    }
//}


struct NavigationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBootcamp()
    }
}
