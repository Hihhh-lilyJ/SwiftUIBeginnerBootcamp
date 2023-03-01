//
//  StacksBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct StacksBootcamp: View {
    //  VStack -> Vertical
    //  HStack -> Horizontal
    //  ZStack -> zIndex (back to front)
    //  leading -> left margin
    //  trailing -> right margin
    //  top
    //  bottom
    var body: some View {
        
        VStack (spacing: 60) {
            ZStack{
                Circle()
                    .fill(Color.yellow)
                    .frame(width: 100, height: 100)
                Text(">_<")
                    .font(.title)
//                    .foregroundColor(Color.black)
                }
            Text("$_$")
                .background(
                    Circle()
                        .fill(Color.yellow)
                        .frame(width: 100, height: 100)
                )
        }
        
//        VStack(alignment: .center, spacing: 10) {
//            Text("Item In Your Cart:")
//                .font(.title2)
//            Text("5")
//                .font(.largeTitle)
//                .underline()
//        }
        
//
////        ZStack(alignment: .top){
//        ZStack{
//            Rectangle()
//                .fill(Color.gray)
//                .frame(width: 600, height: 600)
//
//            VStack(alignment: .leading, spacing: 30){
////            VStack{
//
//                Rectangle()
//                    .fill(
//                        LinearGradient(colors: [Color.pink, Color.white], startPoint: .topTrailing, endPoint: .bottomLeading))
//                    .frame(width: 200, height: 200)
//                    .shadow(color: Color.gray, radius: 10, x: 5, y: 10)
//
//                Rectangle()
//                    .fill(
//                        LinearGradient(colors: [Color.pink, Color.white], startPoint: .topTrailing, endPoint: .bottomLeading))
//                    .frame(width: 150, height: 150)
//                    .shadow(color: Color.gray, radius: 10, x: 5, y: 10)
//
//                HStack (alignment: .bottom, spacing: 20){
////                HStack{
//                    Rectangle()
//                        .fill(
//                            LinearGradient(colors: [Color.pink, Color.white], startPoint: .topTrailing, endPoint: .bottomLeading))
//                        .frame(width: 40, height: 40)
//                    .shadow(color: Color.gray, radius: 10, x: 5, y: 10)
//
//                    Rectangle()
//                        .fill(LinearGradient(colors: [Color.green, Color.cyan], startPoint: .leading, endPoint: .trailing))
//                        .frame(width: 80, height: 80)
//                    Rectangle()
//                        .fill(LinearGradient(colors: [Color.yellow, Color.orange], startPoint: .leading, endPoint: .trailing))
//                        .frame(width: 30, height:30)
//                }
//                .background(Color.white)
//            }
//            .background(Color.black)
//        }
        
        
//
//        VStack(alignment: .center, spacing: 30, content: {
//            Rectangle()
//                .fill(LinearGradient(colors: [Color.yellow, Color.orange], startPoint: .leading , endPoint: .bottomTrailing))
//                .frame(width: 100, height: 100, alignment: .center)
//                .shadow(color: Color.gray, radius: 5, x: 5, y: 10)
//
//            Rectangle()
//                .fill(LinearGradient(colors: [Color.cyan, Color.teal], startPoint: .leading , endPoint: .bottomTrailing))
//                .frame(width: 100, height: 100, alignment: .center)
//                .shadow(color: Color.gray, radius: 5, x: 5, y: 10)
//
//            Rectangle()
//                .fill(LinearGradient(colors: [ Color.white,Color.red], startPoint: .topLeading , endPoint: .bottomTrailing))
//                .frame(width: 100, height: 100, alignment: .center)
//                .shadow(color: Color.gray, radius: 5, x: 5, y: 10)
//
//        })
    
        
        
        
//       HStack {
//           Rectangle()
//               .fill(LinearGradient(colors: [Color.indigo, Color.blue], startPoint: .leading , endPoint: .bottomTrailing))
//               .frame(width: 100, height: 100, alignment: .center)
//               .shadow(color: Color.gray, radius: 5, x: 5, y: 10)
//
//           Rectangle()
//               .fill(LinearGradient(colors: [Color.gray, Color.black], startPoint: .leading , endPoint: .trailing))
//               .frame(width: 100, height: 100, alignment: .center)
//               .shadow(color: Color.gray, radius: 5, x: 5, y: 10)
//
//           Rectangle()
//               .fill(LinearGradient(colors: [Color.cyan, Color.mint], startPoint: .topLeading , endPoint: .bottomTrailing))
//               .frame(width: 100, height: 100, alignment: .center)
//               .shadow(color: Color.gray, radius: 5, x: 5, y: 10)
//       }
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
            static var previews: some View {
                StacksBootcamp()
            }
        }
