//
//  File.swift
//  Beers
//
//  Created by jorgemht on 31/3/23.
//

import Foundation

private let baseURL = "https://api.punkapi.com/v2"

var host = baseURL

struct EndPoint {
    static let beers =  URL(string: "\(host)/beers")!
    static let random = URL(string: "\(host)/beers/random")!
}
