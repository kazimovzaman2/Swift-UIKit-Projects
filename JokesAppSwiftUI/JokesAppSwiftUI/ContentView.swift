//
//  ContentView.swift
//  JokesAppSwiftUI
//
//  Created by Zaman Kazimov on 21.12.24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var jokesVM = JokesViewModel()
    
    var body: some View {
        NavigationView {
            List(jokesVM.jokes) { element in
                Text(element.joke)
            }
            .toolbar {
                Button(action: addJoke) {
                    Text("Get New Joke")
                }
            }
            .navigationTitle("Jokes App")
        }
    }
    
    func addJoke() {
        jokesVM.getJokes()
    }
}

#Preview {
    ContentView()
}
