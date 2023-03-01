//
//  ForEachBootacmp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hi Everyone"]
    let mystring:String = "Hello"
    
    var body: some View {
        VStack {
            ForEach(data.indices) {index in
            Text("\(data[index]): \(index)")
        }
            ForEach(0..<100) {
                index in
                Circle()
                    .fill(Color.yellow)
                    .frame(width: 30, height: 30)
            }
//            ForEach(0..<10) {
//                index in
//                HStack {
//                    Circle()
//                        .fill(Color.yellow)
//                        .frame(width: 30, height: 30)
//                    Text("index is: \(index)")
//                }
//            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
