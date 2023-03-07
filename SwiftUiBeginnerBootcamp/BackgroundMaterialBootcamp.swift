//
//  BackgroundMaterialBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 07/03/2023.
//

import SwiftUI

struct BackgroundMaterialBootcamp: View {
    var body: some View {
        VStack{
            Spacer()
            VStack{
                Text("Hello!!")
                    .frame(height: 400)
                    .frame(maxWidth: .infinity)
                    .background(.ultraThinMaterial)
                    .cornerRadius(30)
            }
        }
        .ignoresSafeArea(.all)
        .background(
        Image("profilee")
        )
    }
}

struct BackgroundMaterialBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialBootcamp()
    }
}
