//
//  FakeBeer.swift
//  Beers
//
//  Created by jorgemht on 1/4/23.
//

import Foundation

let beerData: [BeerUI] = [
    BeerUI(id: 1, name: "#", description: "#", imageUrl: "#")
]

extension MainVM {
    func LoadData() {
        self.beers = beerData
    }
}
