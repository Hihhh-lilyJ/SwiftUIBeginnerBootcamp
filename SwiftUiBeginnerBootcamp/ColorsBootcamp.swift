//
//  ColorsBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(
                RadialGradient(colors: [Color.indigo, Color.gray], center: .center, startRadius: 5, endRadius: 300)
            )
            .frame(width: 300, height: 200)
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
    }
}
