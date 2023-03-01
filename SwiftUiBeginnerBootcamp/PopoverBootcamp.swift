//
//  PopoverBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

//sheets
//animations
//transitions
import SwiftUI

struct PopoverBootcamp: View {
    @State var showNewScreen : Bool = false
    var body: some View {
        ZStack{
            Color.gray
                .edgesIgnoringSafeArea(.all)
            VStack{
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                .foregroundColor(Color.white)
                Spacer()
            }
            // METHOD - 1 Sheet
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })
            
            // METHOD - 2 Transition
            
//            ZStack{
//                if showNewScreen{
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//            .zIndex(2.0)
            
//            if showNewScreen{
//                NewScreen(showNewScreen: $showNewScreen)
//                    .padding(.top, 100)
//                    .transition(.move(edge: .bottom))
//                    .animation(.spring())
//            }
            
            //METHOD - 3 Animation
            
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
        }
    }
}

struct NewScreen : View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen : Bool
    
    var body: some View {
        ZStack (alignment: .topLeading){
            Color.indigo
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
//                presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color.white)
                    .font(.title)
                    .padding(20)
            })
        }
    }
}

struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
//        NewScreen()
    }
}
