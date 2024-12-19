//
//  FifthView.swift
//  FirstSwiftUIApp
//
//  Created by Zaman Kazimov on 16.12.24.
//

import SwiftUI

struct FifthView: View {
    
    @State var myName = "James"

    var body: some View {
        VStack {
            Text(myName)
                .font(.largeTitle)
                .padding()
            TextField("placeholder", text: $myName)
        }
    }
}

#Preview {
    FifthView()
}
