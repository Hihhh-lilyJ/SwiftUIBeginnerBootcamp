//
//  AlertBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert : Bool = false
    @State var alertType : MyAlerts? = nil
//    @State var alertTitle : String = ""
//    @State var alertMessage : String = ""
    @State var backgroundColor = Color.gray.opacity(0.5)
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            VStack {
                Button("Button 1") {
                    alertType = .error
                    showAlert.toggle()
                }
                Button("Button 2") {
                    alertType = .success
                    showAlert.toggle()
                }
                
            }
                .alert(isPresented: $showAlert, content: {
                    getAlert()
                })
            }
        }
            func getAlert() -> Alert {
                switch alertType {
                case .error:
                    return Alert(title: Text("There was an error!"))
                case .success:
                    return Alert(title: Text("This was a success!"), message: nil, dismissButton: .default(Text("OK"),action: {
                        backgroundColor = .indigo.opacity(0.5)
                    }))
                default:
                    return Alert(title: Text("ERROR"))
                }
//                return Alert(
//                    title: Text("This is the title"),
//                    message: Text("Here we will describe the error"),
//                    dismissButton: .default((Text("OK!")))
//                    //                        primaryButton: .destructive(Text("DELETE"), action: {
//                    //                            Backgroundcolor = .pink.opacity(0.5)
//                    //                        }),
////                    secondaryButton: .cancel()
//        )
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
