//
//  DetailsView.swift
//  FavoriteBook
//
//  Created by Zaman Kazimov on 16.12.24.
//

import SwiftUI

struct DetailsView: View {
    
    var chosemFavoriteElement: FavoriteElements
    
    var body: some View {
        VStack {
            Image(chosemFavoriteElement.imagename)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(chosemFavoriteElement.name)
                .font(.largeTitle)
                .padding()
            
            Text(chosemFavoriteElement.description)
        }
    }
}

#Preview {
    DetailsView(chosemFavoriteElement: thedarkknight)
}
