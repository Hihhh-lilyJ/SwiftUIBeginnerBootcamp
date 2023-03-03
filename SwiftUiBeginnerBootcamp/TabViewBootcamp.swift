//
//  TabViewBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 03/03/2023.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab: Int = 0
    
    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    var body: some View {
        TabView {
            ForEach(icons, id: \.self) {
                icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 300)
        )
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
       
//        TabView {
//            HomeView()
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//            Text("BROWSE TAB")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//            Text("PROFILE TAB")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//        }
//        .accentColor(.black)
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}

//struct HomeView: View {
//    var body: some View {
//        ZStack {
//            Color.gray.opacity(0.5).ignoresSafeArea()
//            Text("Home Tab")
//                .font(.largeTitle)
//            .foregroundColor(Color.white)}
//    }
//}
