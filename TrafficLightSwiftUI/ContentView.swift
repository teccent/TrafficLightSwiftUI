//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Теона Магай on 11.02.2024.
//

import SwiftUI

enum CurrentLight {
    case red, orange, green
}

struct ContentView: View {
    @State private var buttonText = "Start"
    @State private var currentLight = CurrentLight.red
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                ColorCircle(color: .red, opacity: currentLight == .red ? 1 : 0.5)
                ColorCircle(color: .orange, opacity: currentLight == .orange ? 1 : 0.5)
                ColorCircle(color: .green, opacity: currentLight == .green ? 1 : 0.5)
                
                Spacer()
                
                ChangeColorButton(title: buttonText) {
                    if buttonText == "Start" {
                        buttonText = "Next"
                    }
                    nextColor()
                }
                
            }
            .padding()
        }
    }
    
    
    private func nextColor() {
        switch currentLight {
            case .red:
                currentLight = .orange
            case .orange:
                currentLight = .green
            case .green:
                currentLight = .red
        }
    }
}

#Preview {
    ContentView()
}
