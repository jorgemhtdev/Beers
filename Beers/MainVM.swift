//
//  ContentViewModel.swift
//  Beers
//
//  Created by jorgemht on 1/4/23.
//

import Foundation

public class MainVM : ObservableObject {
    @Published var beers:[BeerUI] = []
}
