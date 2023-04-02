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
        // https://developer.apple.com/documentation/swiftui/grid
        Grid(alignment: .leading, horizontalSpacing: 25, verticalSpacing: 30) {

            // Cada vista en a GridRow representa una columna
            GridRow() {
                AsyncImage(url: URL(string: beer.imageUrl)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 125, height: 250)
                .gridCellColumns(3)
                .gridCellAnchor(.center) // anular la alineación vertical y horizontal
            }

            // sin grid row: se expandirá a lo largo de la columna de la cuadrícula
            Divider()
            // evita que una vista flexible ocupe más espacio que las otras celdas
                .gridCellUnsizedAxes(.horizontal)

            GridRow {
                Text(beer.name)
                Text(beer.name)
                Text(beer.name)
            }
            //.font(.body.width(.compressed))

            GridRow {
                Text(beer.description)
                    .multilineTextAlignment(.center)
                    .gridCellColumns(3)

            }
        }
    }
}

struct BeerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailBeerView(beer: BeerDetailFake)
    }
}
