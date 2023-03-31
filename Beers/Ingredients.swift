//
//  Ingredients.swift
//  Beers
//
//  Created by jorgemht on 31/3/23.
//

import Foundation

struct Ingredients: Decodable {
    let malt: [Malt]
    let hops: [Hop]
    let yeast: String
}
