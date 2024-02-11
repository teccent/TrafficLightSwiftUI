//
//  ChangeColorButton.swift
//  TrafficLightSwiftUI
//
//  Created by Теона Магай on 11.02.2024.
//

import SwiftUI

struct ChangeColorButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 30))
        }
        .padding()
        .frame(width: 200, height: 60)
        .buttonStyle(.borderedProminent)
        .tint(.blue)

    }
}

#Preview {
    ChangeColorButton(title: "Start", action: {})
}
