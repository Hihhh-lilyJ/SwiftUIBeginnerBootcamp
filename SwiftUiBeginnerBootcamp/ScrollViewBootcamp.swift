//
//  ScrollViewBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        
        ScrollView{
            LazyVStack{
                ForEach(0..<30) {
                    index in
                    ScrollView(.horizontal, showsIndicators: true, content: {
                        LazyHStack{
                            ForEach(0..<10){
                                index in
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 100)
                                    .shadow(color: .gray, radius: 5, x: 5, y: 0)
                                    .padding()
                                }
                            }
                        }
                    )
                }
            }
        }
//        ScrollView(.vertical, showsIndicators: false, content: {
//            VStack{
//                ForEach(0..<30) {
//                    index in
//                    Rectangle()
//                        .fill(Color.gray)
//                        .cornerRadius(10)
//                        .frame(width: 200, height: 100)
//                        .shadow(radius: 10)
//                        .padding()
//                }
//            }
//         }
//      )
   }
}
            
            //        VStack {
            //                ScrollView{
            //                    ForEach(0..<30){
            //                        index in
            //                        HStack {
            //                            Circle()
            //                                .fill(Color.yellow)
            //                                .frame(width: 30, height: 30)
            //                            Text("index is: \(index)")
            //                        }
            //                    }
            //                }
            //            }


struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
