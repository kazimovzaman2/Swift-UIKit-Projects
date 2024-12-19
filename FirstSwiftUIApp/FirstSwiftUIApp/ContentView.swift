//
//  ContentView.swift
//  FirstSwiftUIApp
//
//  Created by Zaman Kazimov on 16.12.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Text("Hello, world!")
                .padding()
            Text("Hello, world!")
                .font(.title)
                .foregroundColor(Color.blue)
                .multilineTextAlignment(.center)
                .padding()
        }
        
    }
}

#Preview {
    ContentView()
}
