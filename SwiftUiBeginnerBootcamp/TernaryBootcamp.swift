//
//  TernaryBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct TernaryBootcamp: View {
    @State var isStaringState: Bool = false
    var body: some View {
        VStack (spacing:20) {
            
            Button("Button: \(isStaringState.description)"){
                isStaringState.toggle()
            }
            Text(isStaringState ? "Start!!!" : "End!!!")
            
            RoundedRectangle(
            cornerRadius: 20)
                .fill(isStaringState ? Color.gray : Color.yellow)
                .frame(width: isStaringState ? 100 : 200, height: isStaringState ? 100 : 200)
            
           
            Spacer()
        }
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
