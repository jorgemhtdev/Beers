//
//  FakeBeer.swift
//  Beers
//
//  Created by jorgemht on 1/4/23.
//

import Foundation

private let beerData: [BeerUI] = [
    BeerUI(id: 1, name: "#", description: "#", imageUrl: "#")
]

extension MainVM {
    static let loadList: MainVM = {
        let viewModel = MainVM()
        viewModel.beers = beerData

        return viewModel
    }()
}
