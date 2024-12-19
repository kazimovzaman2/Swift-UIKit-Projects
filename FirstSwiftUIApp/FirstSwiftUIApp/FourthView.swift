//
//  FourthView.swift
//  FirstSwiftUIApp
//
//  Created by Zaman Kazimov on 16.12.24.
//

import SwiftUI

struct FourthView: View {
    
    @State var myName = "Zaman"

    var body: some View {
        VStack {
            Text(myName)
            
            Button(action: {
                myName = "James"
            }) {
                Text("MyButton")
            }
        }
        
    }
}

#Preview {
    FourthView()
}
