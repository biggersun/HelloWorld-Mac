//
//  ContentView.swift
//  HelloWorld
//
//  The main view that displays "Hello World" message
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Hello World")
                .font(.system(size: 48, weight: .bold))
                .foregroundColor(.blue)

            Text("Welcome to your first Mac app!")
                .font(.title3)
                .foregroundColor(.secondary)
        }
        .frame(width: 400, height: 300)
        .padding()
    }
}

#Preview {
    ContentView()
}
