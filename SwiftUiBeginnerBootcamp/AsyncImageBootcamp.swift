//
//  AsyncImageBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 07/03/2023.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    let url = URL(string: "https://picsum.photos/200")
    var body: some View {
        AsyncImage(url: url, content: {
            returnImage in returnImage
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .cornerRadius(50)
        }, placeholder: {
            ProgressView()
        }
        )
    }
}

struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}
