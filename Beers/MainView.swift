//
//  ContentView.swift
//  Beers
//
//  Created by jorgemht on 30/3/23.
//

import SwiftUI

struct MainView: View {

    // Opción sin instanciar la view model desde la view
    @StateObject var viewModel: MainVM

    // Opción instanciar view model desde la view y con un constructor para la preview
    // @StateObject var viewModel = MainVM()
    //  init(forPreview: Bool = false) {
    //      guard forPreview else { return }
    //      let viewModel = MainVM()
    //      viewModel.beers = beerData
    //      _viewModel = StateObject(wrappedValue: viewModel)
    // }

    // Con un constructor para la preview y una extensión de la view model para cargar datos
    // #if DEBUG
    // init(forPreview: Bool = false) {
    //   self.viewModel.LoadData()
    // }
    // #endif

    // Un merge de ambas opciones, opción sin instanciar view model desde la view pero dentro de un constructor para debug y opción para instanciar viewmodel desde la view

    //#if DEBUG
    //    let viewModel: MainVM
    //    init() {
    //        self.viewModel = MainVM(debugBeers: beerData)
    //    }
    //#else
    //    @StateObject var viewModel = MainVM()
    //#endif

    @State var showSheet: Bool = false

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
                Text("Novedades de SwiftUI")
            }
        }
    }

}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = MainVM()
        MainView(viewModel: viewModel)
            .onAppear {
                viewModel.beers = beerData
            }
        //ContentView(forPreview: true)
        //ContentView()
    }
}

//#if DEBUG
//extension ContentViewModel {
//    convenience init(debugBeers: [BeerUI]) {
//        self.init()
//        self.beers = beers
//    }
//}
//#endif

