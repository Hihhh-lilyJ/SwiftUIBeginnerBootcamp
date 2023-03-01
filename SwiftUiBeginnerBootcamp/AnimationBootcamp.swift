//
//  AnimationBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated : Bool = false
    
    var body: some View {
        VStack{
            Button("Button") {
                  isAnimated.toggle()
            }
                Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 100 : 50)
                .fill(isAnimated ? Color.gray : Color.indigo)
                .frame(width: isAnimated ? 100 : 300,
                       height: isAnimated ? 100 : 300)
                .offset(y: isAnimated ? 300 : 0)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .animation(Animation.default.repeatForever(autoreverses: true))
                Spacer()
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
