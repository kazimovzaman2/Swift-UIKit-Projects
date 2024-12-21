//
//  CircularImaveView.swift
//  HeroWidget
//
//  Created by Zaman Kazimov on 19.12.24.
//

import SwiftUI

struct CircularImaveView: View {
    var image : Image

    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.purple, lineWidth: 5))
            .shadow(radius: 15)
    }
}

#Preview {
    CircularImaveView(image: Image("batman"))
}
