//
//  ContentView.swift
//  SwiftUINewViews
//
//  Created by Zaman Kazimov on 30.12.24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var scale = 1.0
    @State private var big = false

    var body: some View {
        VStack {
            Text("Tap Me!")
                .scaleEffect(scale)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 1)) {
                        if big {
                            scale = 1.0
                        }
                        else {
                            scale = 4.0
                        }
                        big.toggle()
                    }
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
