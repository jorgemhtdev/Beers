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
        ScrollView {
            Grid(alignment: .leading, horizontalSpacing: 25, verticalSpacing: 30) {

                // Cada vista en a GridRow representa una columna
                GridRow() {
                    AsyncImage(url: URL(string: beer.imageURL)) { image in
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

                GridRow() {
                    Text(beer.tagline)
                        .font(.headline)
                        .gridCellColumns(3)
                        .gridCellAnchor(.center)
                }

                GridRow {
                    Text(beer.description)
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .lineLimit(10)
                        .gridCellColumns(3)
                }

                // sin grid row: se expandirá a lo largo de la columna de la cuadrícula
                Divider()
                // evita que una vista flexible ocupe más espacio que las otras celdas
                    .background(Color.yellowStrongXA)
                    .gridCellUnsizedAxes(.horizontal)

                GridRow {
                    Text(beer.name)
                        .gridCellColumns(2)

                    Text(beer.firstBrewed)
                        .gridCellAnchor(.trailing)
                }
                .font(.body.width(.compressed))

                GridRow {
                    Text(String("abv: \(beer.abv)"))
                    Text("ibu: \(beer.ibu == -1 ? "N/A" : String(beer.ibu))")
                    Text("srm: \(beer.srm == -1 ? "N/A" : String(beer.srm))")
                }
                .font(.body.width(.condensed))

                // sin grid row: se expandirá a lo largo de la columna de la cuadrícula
                Divider()
                    .background(Color.yellowStrongXA)

                // evita que una vista flexible ocupe más espacio que las otras celdas
                .gridCellUnsizedAxes(.horizontal)

                GridRow {
                    Text(beer.food)
                        .font(.callout)
                        .multilineTextAlignment(.center)
                        .lineSpacing(12)
                        .gridCellColumns(3)

                }
            }
        }
    }
}

struct BeerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BeerDetailView(beer: BeerDetailFake)
    }
}
