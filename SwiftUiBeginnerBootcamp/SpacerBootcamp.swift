//
//  SpacerBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "arrowshape.left")
                   Spacer()
                    .frame(height: 10)
//                    .background(Color.black)
                Image(systemName: "cart")
            }
//            .foregroundColor(Color.white)
            .font(.largeTitle)
//            .background(Color.yellow)
            .padding(.horizontal)
//            .background(Color.black)
             Spacer()
                .frame(width: 10)
//                .background(Color.black)
            Rectangle()
                .frame(height: 55)
        }
//        HStack {
//                Spacer()
//.frame(height: 10)
//                Rectangle()
//                    .fill(Color.gray)
//                    .frame(width: 50, height: 50)
//                Spacer()
//                    .frame(height: 10)
//                Rectangle()
//                    .fill(Color.gray)
//                    .frame(width: 50, height: 50)
//                Spacer()
//                    .frame(height: 10)
//                Rectangle()
//                    .fill(Color.gray)
//                    .frame(width: 50, height: 50)
//                Spacer()
//                    .frame(height: 10)
//                Rectangle()
//                    .fill(Color.gray)
//                    .frame(width: 50, height: 50)
//                Spacer()
//                    .frame(height: 10)
//        }
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
