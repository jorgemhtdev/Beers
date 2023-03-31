//
//  Hop.swift
//  Beers
//
//  Created by jorgemht on 31/3/23.
//

import Foundation

struct Hop: Decodable {
    let name: String
    let amount: Amount
    let add: String
    let attribute: String
}
