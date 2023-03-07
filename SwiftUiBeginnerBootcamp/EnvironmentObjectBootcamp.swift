//
//  EnvironmentObjectBootcamp.swift
//  SwiftUiBeginnerBootcamp
//
//  Created by MacBook Pro on 06/03/2023.
//


import SwiftUI
//    ObservedObject
//    StateObject
//    EnvironmentObject

class EnvironmentViewModel: ObservableObject{
    @Published var dataArray: [String] = []
    init() {
        getData()
    }
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}

struct EnvironmentObjectBootcamp: View {
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    var body: some View {
        NavigationView{
            List{
                ForEach(viewModel.dataArray, id: \.self) {item in
                    NavigationLink(
                        destination: DetailView(selectedItem: item),
                        label: {Text(item)}
                    )
                }
            }
            .navigationTitle("iOS Devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    
    let selectedItem: String
    var body: some View {
        ZStack{
            // body
            Color.blue.opacity(0.5)
                .edgesIgnoringSafeArea(.all)
            
            // foreground
                NavigationLink(
                    destination: FinalView(),
                    label: {
                    Text(selectedItem)
                                    .font(.headline)
                                    .foregroundColor(.blue)
                                    .padding()
                                    .padding(.horizontal)
                                    .background(Color.white)
                                    .cornerRadius(30)
                })
          }
    }
}

struct FinalView: View {
    @EnvironmentObject var viewModel: EnvironmentViewModel
    var body: some View {
        ZStack{
            // background
            LinearGradient(
                gradient: Gradient(
                    colors: [
                        Color.indigo.opacity(0.5),
                        Color.blue.opacity(0.5)
                    ]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .ignoresSafeArea(.all)
            
            //foreground
            ScrollView{
                VStack(spacing: 20){
                    ForEach(viewModel.dataArray, id: \.self) {
                        item in
                        Text(item)
                    }
                }
            }
            .font(.title)
            .foregroundColor(Color.white)
        }
    }
}

struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
//        DetailView(selectedItem: "iPhone")
        //FinalView()
    }
}
