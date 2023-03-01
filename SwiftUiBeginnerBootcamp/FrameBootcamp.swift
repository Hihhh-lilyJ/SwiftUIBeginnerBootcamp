//
//  FrameBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello Again!")
//            .background(Color.yellow)
//            .frame(width: 200, height: 100, alignment: .center)
//            .frame(maxWidth: .infinity,alignment: .leading)
//            .background(Color.gray)
            .background(Color.yellow)
            .frame(height: 100)
            .background(Color.gray)
            .frame(width: 150)
            .background(Color.mint)
            .frame(maxWidth: .infinity)
            .background(Color.accentColor)
            .frame(height: 400)
            .background(Color.indigo)
            .frame(maxHeight: .infinity)
            .background(Color.cyan)
        
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
