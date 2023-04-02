//
//  FakeBeer.swift
//  Beers
//
//  Created by jorgemht on 1/4/23.
//

import Foundation

private let beerData: [BeerUI] = [
    BeerUI(id: 1, name: "Buzz", description: "A light, crisp and bitter IPA brewed with English and American hops. A small batch brewed only once.", imageUrl: "https://images.punkapi.com/v2/keg.png"),
    BeerUI(id: 2, name: "Trashy Blonde", description: "A titillating, neurotic, peroxide punk of a Pale Ale. Combining attitude, style, substance, and a little bit of low self esteem for good measure; what would your mother say? The seductive lure of the sassy passion fruit hop proves too much to resist. All that is even before we get onto the fact that there are no additives, preservatives, pasteurization or strings attached. All wrapped up with the customary BrewDog bite and imaginative twist.", imageUrl: "https://images.punkapi.com/v2/2.png"),
    BeerUI(id: 3, name: "Berliner Weisse With Yuzu - B-Sides", description: "Japanese citrus fruit intensifies the sour nature of this German classic.", imageUrl: "https://images.punkapi.com/v2/keg.png"),
    BeerUI(id: 4, name: "Pilsen Lager", description: "Our Unleash the Yeast series was an epic experiment into the differences in aroma and flavour provided by switching up your yeast. We brewed up a wort with a light caramel note and some toasty biscuit flavour, and hopped it with Amarillo and Centennial for a citrusy bitterness. Everything else is down", imageUrl: "https://images.punkapi.com/v2/keg.png"),
    BeerUI(id: 5, name: "Avery Brown Dredge", description: "An Imperial Pilsner in collaboration with beer writers. Tradition. Homage. Revolution. We wanted to showcase the awesome backbone of the Czech brewing tradition, the noble Saaz hop, and also tip our hats to the modern beers that rock our world, and the people who make them.", imageUrl: "https://images.punkapi.com/v2/5.png"),
    BeerUI(id: 6, name: "Electric India", description: "Re-brewed as a spring seasonal, this beer – which appeared originally as an Equity Punk shareholder creation – retains its trademark spicy, fruity edge. A perfect blend of Belgian Saison and US IPA, crushed peppercorns and heather honey are also added to produce a genuinely unique beer.", imageUrl: "https://images.punkapi.com/v2/6.png"),
    BeerUI(id: 7, name: "Test Beer", description: "This is a test beer description.", imageUrl: "https://example.com/test.png"),
    BeerUI(id: 8, name: "Fake Lager", description: "Fake is the new black. Fake is where it is at. Fake Art, fake brands, fake breasts, and fake lager. We want to play our part in the ugly fallout from the Lager Dream. Say hello to Fake Lager – a zesty, floral 21st century faux masterpiece with added BrewDog bitterness.", imageUrl: "https://images.punkapi.com/v2/8.png"),
    BeerUI(id: 9, name: "AB:07", description: "Whisky cask-aged imperial scotch ale. Beer perfect for when the rain is coming sideways. Liquorice, plum and raisin temper the warming alcohol, producing a beer capable of holding back the Scottish chill.", imageUrl: "https://images.punkapi.com/v2/9.png")
]

extension MainVM {
    static let loadList: MainVM = {
        let viewModel = MainVM()
        viewModel.beers = beerData

        return viewModel
    }()
}

let BeerDetailFake = BeerDetailUI(
    name: "Buzz",
    tagline: "A Real Bitter Experience.",
    firstBrewed: "09/2007",
    description: "A light, crisp and bitter IPA brewed with English and American hops. A small batch brewed only once.",
    imageURL: "https://images.punkapi.com/v2/keg.png",
    brewersTips: "The earthy and floral aromas from the hops can be overpowering. Drop a little Cascade in at the end of the boil to lift the profile with a bit of citrus.", food: "Spicy carne asada with a pico de gallo sauce, Shredded chicken tacos with a mango chilli lime salsa, Cheesecake with a passion fruit swirl sauce",
    abv: 4.5,
    ibu: 60,
    srm: 10
)
