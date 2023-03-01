//
//  ShapesBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
//            .stroke(.green)
//            .foregroundColor(.gray)
//            .stroke(
//                .brown, style:
//                    StrokeStyle(
//                      lineWidth: 20,
//                      lineCap: .butt,
//                      dash: [5],
//                      dashPhase: 10))
            .trim(from: 0.4, to: 1)
            
//        Circle()
//            .fill(Color.gray)
//            .foregroundColor(.brown)
//            .stroke()
//            .stroke(.red)
//            .stroke(Color.gray, lineWidth: 15)
//            .stroke(Color.green, style: StrokeStyle(
//                lineWidth: 5,
//                lineCap: .butt,
//                dash: [10],
//                dashPhase: 20))
//            .trim(from: 0.2, to: 10)
//            .stroke(Color.green, style: StrokeStyle(
//                            lineWidth: 5,
//                            lineCap: .butt,
//                            dash: [10],
//                            dashPhase: 20))
            .frame(width: 300, height: 200)
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
