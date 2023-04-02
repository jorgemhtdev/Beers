//
//  MainButtonStyle.swift
//  Beers
//
//  Created by jorgemht on 2/4/23.
//

import SwiftUI

struct MainButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .font(.title3.bold())
            .foregroundColor(.white)
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .gradientBackground(colors: [.orangeXA, .orangeStrongXA])
            .clipShape(
                RoundedRectangle(
                    cornerRadius: 10,
                    style: .continuous //https://medium.com/fueled-engineering/continuous-rounded-corners-with-uikit-b575d50ab232
                )
            )
            .padding()
    }
}
