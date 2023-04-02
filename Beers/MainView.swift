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
                    NavigationLink(beer.name, value: beer)
                }

                Button(action: {
                    showSheet.toggle()
                }) {
                    Text("Random Beer")
                }
                .frame(height: 40)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .background(
                    .indigo,
                    in: RoundedRectangle(
                        cornerRadius: 10,
                        style: .continuous //https://medium.com/fueled-engineering/continuous-rounded-corners-with-uikit-b575d50ab232
                    )
                )
                .padding(.horizontal)
            }
            .navigationTitle("My Favorite Beer")
            .navigationDestination(for: BeerUI.self) { beer in
                DetailBeerView(id: beer.id)
            }
            .padding()
            .sheet(isPresented: $showSheet) {
                RandomBeerView()
                    .presentationDetents([.medium, .large])
//                    .presentationCornerRadius(60)
//                    .presentationBackgroundInteraction(.enabled)

            }
            .navigationTitle("Beers")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarBackButtonHidden(true)
            .onAppear {
                viewModel.fetchData()
            }
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
