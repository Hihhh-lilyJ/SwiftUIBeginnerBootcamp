//
//  TapGestureBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 06/03/2023.
//

import SwiftUI

struct TapGestureBootcamp: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.gray : Color.indigo)
            
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(20)
            })
            Text("TAP GESTURE")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(20)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
            .onTapGesture(count: 2, perform:{
                isSelected.toggle()
            })
            Spacer()
        }
        .padding(40)
    }
}

struct TapGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureBootcamp()
    }
}
