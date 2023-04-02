//
//  Extension+View.swift
//  Beers
//
//  Created by jorgemht on 2/4/23.
//

import SwiftUI

extension View {
    func gradientBackground(
        colors: [Color],
        startPoint: UnitPoint = .topLeading,
        endPoint: UnitPoint = .bottomTrailing
    ) -> some View {
        self.background(LinearGradient(gradient: Gradient(colors: colors), startPoint: startPoint, endPoint: endPoint))
    }

    func textFieldBordered() -> some View {
        self.overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.orangeStrongXA, lineWidth: 1)
        )
    }
}
