//
//  DetailVM.swift
//  Beers
//
//  Created by jorgemht on 1/4/23.
//

import SwiftUI

struct DetailBeerView: View {

    var id:Int

    @StateObject var viewModel: DetailBeerVM

    init(id:Int, viewModel: DetailBeerVM = DetailBeerVM()) {
        self.id = id
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        VStack {
            BeerDetailView(beer: viewModel.beer)
                .padding()
        }
        .onAppear {
            viewModel.fetchData(id)
        }
    }
}

struct DetailBeerView_Previews: PreviewProvider {
    static var previews: some View {
        DetailBeerView(id: 1, viewModel: DetailBeerVM())
    }
}
