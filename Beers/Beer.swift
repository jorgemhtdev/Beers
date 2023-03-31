//
//  Beer.swift
//  Beers
//
//  Created by jorgemht on 31/3/23.
//

// Para codificar (Serialize JSON) y decodicar (Deserialize JSON) datos debemos conformar en nuestros tipos los protocolos Encodable o Decodable.

// Encodable o Decodable => Codable

import Foundation

struct Beer: Decodable {
    let id: Int
    let name: String
    let tagline: String
    let firstBrewed: String
    let description: String
    let imageUrl: String?
    let abv: Double
    let ibu: Double?
    let targetFg: Double
    let targetOg: Double
    let ebc: Double?
    let srm: Double?
    let ph: Double?
    let attenuationLevel: Double
    let volume: Volume
    let boilVolume: BoilVolume
    let method: Method
    let ingredients: Ingredients
    let foodPairing: [String]
    let brewersTips: String?
    let contributedBy: String

    // La mayoría de veces cuando llamamos a un endpoint la key del JSON no coincide con el nombre de la propiedad de nuestro objeto de dominio. Al implementar CodingKeys hacemos ese mapeo del JSON al nombre de la propiedad.
    enum CodingKeys: String, CodingKey {
        case id, name, tagline, description, abv, ibu, ebc, srm, ph, volume, method, ingredients, foodPairing, brewersTips, contributedBy
        case firstBrewed = "first_brewed"
        case imageUrl = "image_url"
        case targetFg = "target_fg"
        case targetOg = "target_og"
        case attenuationLevel = "attenuation_level"
        case boilVolume = "boil_volume"
    }
}
