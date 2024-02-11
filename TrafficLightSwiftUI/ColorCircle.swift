//
//  ColorCircle.swift
//  TrafficLightSwiftUI
//
//  Created by Теона Магай on 11.02.2024.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundStyle(color)
            .opacity(opacity)
            .frame(width: 120)
            .overlay(Circle()
                .stroke(Color.white, lineWidth: 4))
        
    }
}

#Preview {
    ColorCircle(color: .red, opacity: 1)
}
