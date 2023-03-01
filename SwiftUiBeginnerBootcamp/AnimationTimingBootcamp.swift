//
//  AnimationTimingBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State var isAnimating : Bool = false
    let timing : Double = 10
    var body: some View {
        VStack{
            Button("Button") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 300 : 50, height: 100)
                .animation(.spring(response: 1, dampingFraction: 0.3, blendDuration: 1))
//                .animation(Animation.linear(duration: timing))
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 300 : 50, height: 100)
//                .animation(Animation.easeIn(duration: timing))
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 300 : 50, height: 100)
//                .animation(Animation.easeInOut(duration: timing))
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 300 : 50, height: 100)
//                .animation(Animation.easeOut(duration: timing))
        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}

