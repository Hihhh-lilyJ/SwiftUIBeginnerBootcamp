//
//  DarkModeBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 03/03/2023.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("This color is PRIMARY")
                    .foregroundColor(Color.primary)
                Text("This color is SECONDARY")
                    .foregroundColor(Color.secondary)
                Text("This color is BLACK")
                    .foregroundColor(Color.black)
                Text("This color is WHITE")
                    .foregroundColor(Color.white)
                Text("This color is RED")
                    .foregroundColor(Color.red)
                Text("This color is globally adaptive!")
                    .foregroundColor(Color("AdaptiveColor"))
                Text("This color is locally adaptive!")
                    .foregroundColor(colorScheme == .light ? .green : .yellow)
            }
        }
        .navigationTitle("Dark Mode Bootcamp")
    }
}

struct DarkModeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DarkModeBootcamp()
    }
}
