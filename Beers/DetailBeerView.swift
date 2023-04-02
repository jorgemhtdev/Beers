//
//  DetailVM.swift
//  Beers
//
//  Created by jorgemht on 1/4/23.
//

import SwiftUI

struct DetailBeerView: View {

    let beer:BeerDetailUI

    var body: some View {
        BeerDetailView(beer: beer)
            .padding()
    }
}

struct DetailBeerView_Previews: PreviewProvider {
    static var previews: some View {
        DetailBeerView(beer: BeerDetailFake)
    }
}
