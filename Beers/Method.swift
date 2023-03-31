//
//  Method.swift
//  Beers
//
//  Created by jorgemht on 31/3/23.
//

import Foundation

struct Method: Decodable {
    let mashTemp: [MashTemp]
    let fermentation: Fermentation
    let twist: String?

    enum CodingKeys: String, CodingKey {
        case mashTemp = "mash_temp"
        case fermentation, twist
    }
}
