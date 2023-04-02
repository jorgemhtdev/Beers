//
//  RandomBeerView.swift
//  Beers
//
//  Created by jorgemht on 2/4/23.
//

import SwiftUI

struct RandomBeerView: View {

    @StateObject var viewModel: RandomBeerVM

    @State var showSheet: Bool = false

    init(viewModel: RandomBeerVM = RandomBeerVM()) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        VStack {
            BeerDetailView(beer: viewModel.beer)
                .padding()
        }
        .onAppear {
            viewModel.fetchData()
        }
    }
}

struct RandomBeerView_Previews: PreviewProvider {
    static var previews: some View {
        RandomBeerView()
    }
}
