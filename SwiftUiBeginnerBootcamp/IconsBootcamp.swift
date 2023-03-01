//
//  IconsBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "person.badge.plus")
            .renderingMode(.original)
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//        .scaledToFill()
//            .scaledToFit()
//            .foregroundColor(Color.black)
//            .font(.title)
            .font(.system(size: 60))
            .frame(width: 300, height: 300)
//            .clipped()
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
