//
//  DataPickerBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 03/03/2023.
//

import SwiftUI

struct DataPickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    let startingDate:Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate:Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack {
            Text("SELECTED DATE IS:")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
//            DatePicker("Select a Date", selection: $selectedDate)
//            DatePicker("Select a date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
            DatePicker("Select a date", selection: $selectedDate, in: startingDate...endingDate,
                       displayedComponents: [.date])
                       .accentColor(Color.red)
                       .datePickerStyle(
                        CompactDatePickerStyle()
//                        GraphicalDatePickerStyle()
//                        WheelPickerStyle()
            )
        }
    }
}

struct DataPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DataPickerBootcamp()
    }
}
