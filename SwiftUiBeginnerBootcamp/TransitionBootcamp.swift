//
//  TransitionBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State var showView : Bool = false
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            if showView {
                RoundedRectangle(cornerRadius: 30)
                   .frame(height:
                    UIScreen.main.bounds.height * 0.5)
                   .transition(.asymmetric(insertion: .move(edge: .bottom), removal: AnyTransition.opacity.animation(.easeInOut))
                    .animation(.easeInOut)
                )
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
