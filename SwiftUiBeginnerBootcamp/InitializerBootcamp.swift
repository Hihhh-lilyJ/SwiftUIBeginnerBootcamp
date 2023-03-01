//
//  InitializerBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, cake: Cake) {
        self.count = count
        
        if cake == .Bread {
            self.title = "Bread"
            self.backgroundColor = .brown
        } else {
            self.title = "Donuts"
            self.backgroundColor = .pink
        }
    }
    
    enum Cake {
        case Bread
        case Donuts
    }
    
    var body: some View {
        VStack{
            Text("\(count)")
                .font(.body)
                .foregroundColor(Color.white)
                .underline()
            
            Text(title)
                .font(.title2)
                .foregroundColor(Color.white)
        }
        .frame(width: 100, height: 100)
        .background(backgroundColor)
        .cornerRadius(20)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            InitializerBootcamp(count: 100, cake: .Bread)
            InitializerBootcamp(count: 50, cake: .Donuts)
        }
    }
}
