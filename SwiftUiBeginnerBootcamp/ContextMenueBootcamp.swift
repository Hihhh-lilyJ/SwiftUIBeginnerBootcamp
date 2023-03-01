//
//  ContextMenueBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct ContextMenueBootcamp: View {
    //    var body: some View{
    //        VStack(alignment: .leading, spacing: 10) {
    //            Image(systemName: "house.fill")
    //                .font(.title)
    //            Text("Swift Thinking")
    //                .font(.headline)
    //            Text("How to use Context Menu")
    //                .font(.subheadline)
    //        }
    //        .foregroundColor(Color.white)
    //        .padding(30)
    //        .background(Color.indigo).cornerRadius(30)
    ////        .contextMenu(menuItems: {
    ////            Text("Menu Item 1" )
    ////            Text("Menu Item 2" )
    ////            Text("Menu Item 3" )
    ////        })
    //    }
    //}
    
    
    
    @State var backgroundColor: Color = Color.indigo
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: "house.fill")
                .font(.headline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu(menuItems: {
            Button(action: {
                backgroundColor = .gray
            }, label: {
                Label("Share post", systemImage: "flame.fill")
            })
            Button(action: {
                backgroundColor = .red
            }, label: {
                Text("Report post")
            })
            Button(action: {
                backgroundColor = .green
            }, label: {
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            })
        })
    }
}

struct ContextMenueBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenueBootcamp()
    }
}
