//
//  ImageBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
//        Image("shirt")
        Image("profilee")
            .resizable()
//            .renderingMode(.template)
//            .aspectRatio(contentMode: .fill)
            .foregroundColor(Color.indigo)
            .scaledToFit()
//            .scaledToFill()
            
//
            .frame(width: 300, height: 300)
            .cornerRadius(30)
        
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
