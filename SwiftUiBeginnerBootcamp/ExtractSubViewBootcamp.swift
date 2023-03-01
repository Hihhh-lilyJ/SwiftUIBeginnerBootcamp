//
//  ExtractSubViewBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct ExtractSubviewBootcamp: View {
    var body: some View {
        ZStack{
            Color.brown.edgesIgnoringSafeArea(.all)
            contentLayer
        }
    }
        var contentLayer: some View {
            HStack{
                myItem(title: "Bread", count: 1, color: .white)
                myItem(title: "Donut", count: 1, color: .yellow)
                myItem(title: "Americano Lattae", count: 5, color: .mint)
            }
        }
    }

struct ExtractSubviewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewBootcamp()
    }
}

struct myItem: View {
    let title : String
    let count : Int
    let color : Color
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}

