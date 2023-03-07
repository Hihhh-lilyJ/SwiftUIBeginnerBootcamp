//
//  ListSwipActionBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 07/03/2023.
//

import SwiftUI

struct ListSwipActionBootcamp: View {
    @State var fruits: [String] = [
        "Apple", "Orange", "Peach", "Banana"
    ]
    var body: some View {
        List{
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Archived") {
                            
                        }
                        .tint(.blue)
                        Button("Save") {
                            
                        }
                        .tint(.green)
                        Button("Delete") {
                            
                        }
                        .tint(.red)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Button("Share") {
                            
                        }
                        .tint(.yellow)
                    }
            }
        }
    }
    func delete(IndexSet: IndexSet) {
        
    }
}

struct ListSwipActionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipActionBootcamp()
    }
}
