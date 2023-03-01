//
//  ContentView.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
//                RadialGradient(colors: [Color.green, Color.cyan], center: .leading,
//                               startRadius: 5, endRadius: 400)
                
//                .angularGradient(Gradient(colors: [Color.indigo,Color.gray]), center: .topLeading, startAngle: .degrees(30),
//                    endAngle: .degrees(40))
            )
            .frame(width: 300, height: 200)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
