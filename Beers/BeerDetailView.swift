//
//  BeerDetailView.swift
//  Beers
//
//  Created by jorgemht on 2/4/23.
//

import SwiftUI

struct BeerDetailView: View {

    let beer:BeerDetailUI

    var body: some View {
        VStack(spacing: 8) {
            Text(beer.name)
            Text(beer.description)
        }
    }
}

struct BeerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailBeerView(beer: BeerDetailFake)
    }
}
