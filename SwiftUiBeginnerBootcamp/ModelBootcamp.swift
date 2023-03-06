//
//  ModelBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 06/03/2023.
//

import SwiftUI

struct ModelBootcamp: View {
    
    struct userModel : Identifiable {
        let id : String = UUID().uuidString
        let displayName : String
        let userName : String
        let followerCount : Int
        let isVerified : Bool
    }
    
    @State var users: [userModel] = [
//        "Emily", "Rinnn", "Eggy", "Hih Lily"
        userModel(
            displayName: "Emily",
            userName: "emily493",
            followerCount: 100,
            isVerified: true),
        userModel(
            displayName: "Rinnn",
            userName: "rinnn_JJ",
            followerCount: 431,
            isVerified: true ),
        userModel(
            displayName: "Eggy",
            userName: "eggy04",
            followerCount: 385,
            isVerified: false),
        userModel(
            displayName: "Hih Lily",
            userName: "hih_lilyy",
            followerCount: 432,
            isVerified: true),
        userModel(
            displayName: "Yunna",
            userName: "unnnay01",
            followerCount: 221,
            isVerified: false)
    ]
    
    var body: some View {
        NavigationView{
            List{
                ForEach(users) { user in
                    HStack(spacing: 15.0){
                        Circle()
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color.yellow)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(Color.gray)
                        }
                        Spacer()
                        if user.isVerified{
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(Color.blue)
                        }
                        VStack{
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(Color.gray)
                           }
                     }
                    .padding(.vertical, 10)
                 }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

struct ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}
