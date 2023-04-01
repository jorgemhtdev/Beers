//
//  ContentView.swift
//  Beers
//
//  Created by jorgemht on 30/3/23.
//

import SwiftUI

struct MainView: View {

    @StateObject var viewModel: MainVM

    @State var showSheet: Bool = false

    init(viewModel: MainVM = MainVM()) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {

        NavigationStack {
            VStack {

                List(viewModel.beers) { beer in
                    NavigationLink(beer.name) {
                        Text(beer.name)
                    }
                }

                Button("Random Beer") {
                    showSheet.toggle()
                }
                .padding(.top, 32)
            }
            .navigationTitle("Beers")
            .navigationDestination(for: BeerUI.self) { beer in
                Text(beer.name)
            }
            .padding()
            .sheet(isPresented: $showSheet) {
                Text("Random Beer")
            }
            .navigationTitle("Beers")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarBackButtonHidden(true)
        }

    }

}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(viewModel: .loadList)
    }
}



// @StateObject var viewModel: MainVM

// @StateObject var viewModel = MainVM()
//  init(forPreview: Bool = false) {
//      guard forPreview else { return }
//      let viewModel = MainVM()
//      viewModel.beers = beerData
//      _viewModel = StateObject(wrappedValue: viewModel)
// }

// #if DEBUG
// init(forPreview: Bool = false) {
//   self.viewModel.LoadData()
// }
// #endif


//    #if DEBUG
//        let viewModel: MainVM
//        init() {
//            self.viewModel = MainVM()
//        }
//    #else
//        @StateObject var viewModel = MainVM()
//    #endif

// MainView()
// ContentView(forPreview: true)
// ContentView()
