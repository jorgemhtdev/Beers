//
//  RandomBeer.swift
//  Beers
//
//  Created by jorgemht on 2/4/23.
//

import Foundation

public class RandomBeerVM : ObservableObject {
    @Published var beer:BeerDetailUI = BeerDetailUI(
        name: "",
        tagline: "",
        firstBrewed: "",
        description: "",
        imageURL: "",
        brewersTips: "",
        food: "",
        abv: 0,
        ibu: 0,
        srm: 0
    )

    func fetchData() {
        get(url: EndPoint.random, type: [Beer].self, onSuccess: { data in
            if let beerRandom = data.first {
                self.beer = beerRandom.toBeerUI()
            }
        },
            onFailure: { error in
            print(error)
        }
        )
    }
}
