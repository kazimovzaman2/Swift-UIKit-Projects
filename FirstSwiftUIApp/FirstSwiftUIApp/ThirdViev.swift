//
//  ThirdViev.swift
//  FirstSwiftUIApp
//
//  Created by Zaman Kazimov on 16.12.24.
//

import SwiftUI

struct ThirdViev: View {
    
    let myArray = ["Zaman", "Kanye"]
    
    var body: some View {
        List (myArray, id: \.self) { element in
            HStack {
                Image("compresed")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                Text(element).font(.largeTitle)
            }
        }
        
//        List {
//            ForEach(myArray, id: \.self) { element in
//                Text(element)
//            }
//        }
    }
}

#Preview {
    ThirdViev()
}
