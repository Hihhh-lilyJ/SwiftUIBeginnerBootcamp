//
//  PickerBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 02/03/2023.
//

import SwiftUI

struct PickerBootcamp: View {
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
    "Most Recent", "Most Popular", "Most Liked"]
    var body: some View {
        
        Picker(
            selection: $selection,
            label: Text("Picker:"),
            content:  {
                ForEach(filterOptions.indices) {
                    index in Text(filterOptions[index])
                        .tag(filterOptions[index])
                }
            }
        )
        .pickerStyle(SegmentedPickerStyle())
//        .background(Color.gray)
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
