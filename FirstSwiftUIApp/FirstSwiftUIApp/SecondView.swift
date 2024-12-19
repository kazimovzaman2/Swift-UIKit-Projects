//
//  SecondView.swift
//  FirstSwiftUIApp
//
//  Created by Zaman Kazimov on 16.12.24.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        Image("compresed")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.6)
    }
}

#Preview {
    SecondView()
}
