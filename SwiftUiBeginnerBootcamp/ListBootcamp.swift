//
//  ListBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct ListBootcamp: View {
    @State var fruits : [String] = [
        "apple", "orange", "coconut" , "water melon"
    ]
    
    @State var vegies : [String] = [
    "tomato", "potato", "carrot" ]
    
    var body: some View {
        NavigationView{
            List{
                Section (
                    header:
                        HStack {
                            Text("Fruits")
                            .foregroundColor(Color.orange)
                        .font(.headline)
                            Image(systemName: "flame.fill")
                                .foregroundColor(Color.orange)
                                .font(.headline)
                        }
                     ) {
                        ForEach(fruits, id: \.self ) {
                            fruit in Text(fruit.capitalized)
                                .font(.body)
                                .foregroundColor(.white)
                                .padding(.vertical)
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                        .listRowBackground(Color.blue)
                  }
                
                Section(
                    header:
                        HStack {
                            Text("Vegies")
                            .foregroundColor(Color.purple)
                        .font(.body)
                        }
                     ) {
                        ForEach(vegies, id:  \.self ) {
                            vegies in Text(vegies.capitalized)
                                .font(.body)
                        }
                    }
               }
            .accentColor(.orange)
            .navigationTitle("List")
            .navigationBarItems(
                leading: EditButton(),trailing: addButton)
        }
        .accentColor(.red)
    }
    
    var addButton : some View{
        Button("Add" , action: {add() })
    }
 
    func delete(indexSet : IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices : IndexSet, newOffset : Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add () {
        fruits.append("Pineapple")
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
