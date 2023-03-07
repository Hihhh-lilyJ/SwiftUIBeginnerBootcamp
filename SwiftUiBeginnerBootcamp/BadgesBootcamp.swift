//
//  BadgesBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 07/03/2023.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
        List {
            Text("SNEAKERS")
                .font(.headline)
                .badge("NEW ITEM")
            Text("HOODIE")
                .font(.headline)
                .badge("DISCOUNT")
            Text("SPORT WEARE")
                .font(.headline)
                .badge("NEW ARRIVAL")
            Text("iPhone Series")
                .font(.headline)
                .badge("LATEST ITEM")
        }
//        TabView{
//            Color.red
//                .tabItem{
//                    Image(systemName: "heart.fill")
//                    Text("Favourite")
//                }
//                .badge(5)
//            Color.green
//                .tabItem{
//                    Image(systemName: "heart.fill")
//                    Text("Favourite")
//                }
//            Color.gray
//                .tabItem{
//                    Image(systemName: "heart.fill")
//                    Text("Favourite")
//                }
//        }
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
