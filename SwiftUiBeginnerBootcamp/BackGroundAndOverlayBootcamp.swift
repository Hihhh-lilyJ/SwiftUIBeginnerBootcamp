//
//  BackGroundAndOverlayBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        
        Image(systemName: "heart.fill")
            .foregroundColor(Color.white)
            .font(.system(size: 40))
            .background(
                Circle()
                    .fill(LinearGradient(colors:   [Color.pink, Color.white], startPoint: .leading, endPoint: .trailing))
                    .frame(width: 100,
                          height: 100)
                    .shadow(color: Color.pink, radius: 20, x: 0.0, y: 10)
                    .overlay(
                        Circle()
//                            .fill(Color.pink)
                            .fill(LinearGradient(colors: [Color.white,  Color.pink], startPoint: .bottomTrailing, endPoint: .topLeading))
                            .frame(width: 30,height: 30)
                            .overlay(
                                Text("5")
                                    .foregroundColor(Color.white)
                            )
                            .shadow(color: Color.pink, radius: 10, x: 5, y: 5),
                        alignment: .bottomTrailing
                    )
            )
            
        
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//
//            .background(
//                Circle()
////                    .fill(Color.mint)
//                    .fill(LinearGradient(colors: [Color.pink, Color.white], startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 150, height: 150)
//                )
//
//                    .background(
//                        Circle()
////                            .fill(Color.black)
//                            .fill(LinearGradient(colors: [Color.white,Color.pink],
//                                                 startPoint: .leading, endPoint: .trailing))
//                            .frame(width: 200, height: 200)
//                        )
//
//                    .background(
//                        Circle()
////                            .fill(Color.black)
//                            .fill(LinearGradient(colors: [Color.pink,Color.white],
//                                                 startPoint: .leading, endPoint: .trailing))
//                            .frame(width: 250, height: 250)
//                        )
//                    .background(
//                        Circle()
////                            .fill(Color.black)
//                            .fill(LinearGradient(colors: [Color.white,Color.pink],
//                                                 startPoint: .leading, endPoint: .trailing))
//                            .frame(width: 300, height: 300)
//                        )
            
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
