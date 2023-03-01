//
//  PaddingAndSpacerBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack (alignment: .center, spacing: 30) {
            Text("Hello Again!")
                .font(.largeTitle)
                .padding(.bottom , 10)
            .foregroundColor(Color.black)
            Text("This is the description of what we will do on this screen.It is multiple line and we will align the text to the leading edge.")
                .multilineTextAlignment(.leading)
        }
        .padding(.all , 20)
        .background(
            Color.white
                .cornerRadius(20)
        )
//        .padding(.all , 30)
//        .background(Color.yellow)
//        .padding(.horizontal, 10)
//        .background(Color.gray)
        .shadow(
            color: Color.gray,
            radius: 5,
            x: 1,
            y: 10
        )
//            .frame(maxWidth: .infinity,alignment: .leading)
//            .background(Color.yellow)
//            .padding(.leading, 50)
//            .background(Color.mint)
            
//            .background(Color.mint)
//            .padding(.all, 10)
//            .padding(.trailing, 50)
//            .background(Color.black)
//            .frame(width: 200, height: 100)
    }
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
