//
//  ContentViewModel.swift
//  Beers
//
//  Created by jorgemht on 1/4/23.
//

import Foundation

public class MainVM : ObservableObject {
    @Published var beers:[BeerUI] = []

    func fetchData() {
        get(url: EndPoint.beers, type: [Beer].self, onSuccess: { data in
            self.beers = data.map { $0.toBeerUI() }
        },
            onFailure: { error in
            print(error)
        }
        )
    }
}
