//
//  TextBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello!I'm here for my daily routine".capitalized)
//            .font(.body)
//            .italic()
//            .bold()
//            .underline(true, color: Color.red)
//            .strikethrough(true, color: Color.green)
//
//            .font(.system(size: 25, weight: .semibold, design: .serif))
        
            .baselineOffset(20)
            .fontWeight(.bold)
            .kerning(5)
            .multilineTextAlignment(.leading)
            .foregroundColor(.green)
            .frame(
                width: 300,
                height: 300,
                alignment: Alignment.center
            )
            .minimumScaleFactor(1)
         
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
