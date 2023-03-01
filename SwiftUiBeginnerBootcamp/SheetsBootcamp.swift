//
//  SheetsBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct SheetsBootcamp: View {
    @State var showSheet : Bool = false
    var body: some View {
        ZStack{
            Color.gray
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Touch")
                    .font(.title2)
                    .foregroundColor(Color.black)
                    .padding(20)
                    .background(Color.white
                        .cornerRadius(10))
                })
            .fullScreenCover(isPresented: $showSheet, content: {
//                .sheet(isPresented: $showSheet, content: {
                seconsScreen()
            })
         }
    }
}

struct seconsScreen : View {
    @Environment (\.presentationMode) var presentationmode
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.indigo
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                presentationmode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .font(.title2)
                    .foregroundColor(Color.white)
                    .padding(20)
//                    .background(Color.white
//                        .cornerRadius(10))
             })
         }
    }
}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
//        seconsScreen()
    }
}
