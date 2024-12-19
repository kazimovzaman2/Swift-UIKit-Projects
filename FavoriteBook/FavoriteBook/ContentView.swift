//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Zaman Kazimov on 16.12.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            List {
                ForEach(myFavorites) {favorite in
                    Section(header: Text(favorite.title)) {
                        ForEach(favorite.elements) { element in
                            NavigationLink(destination: DetailsView(chosemFavoriteElement: element)) {
                                Text(element.name)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
