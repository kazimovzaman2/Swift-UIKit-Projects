//
//  Circular.swift
//  CircularSwiftUI
//
//  Created by Zaman Kazimov on 27.12.24.
//

import SwiftUI

struct Circular: View {
    
    let lineWidth: CGFloat
    let backgroundColor: Color
    let foregroundColor: Color
    let percentage: Double
    

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                CircularShape()
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(backgroundColor)
                
                CircularShape(percent: percentage)
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(foregroundColor)
            }
        }
        .animation(.easeIn(duration: 1.0), value: percentage)
        .padding(lineWidth / 1.5)
    }
}

#Preview {
    Circular(lineWidth: 10, backgroundColor: .red, foregroundColor: .green, percentage: 50)
}
