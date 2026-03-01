//
//  HelloWorldApp.swift
//  HelloWorld
//
//  A simple Mac application that displays "Hello World"
//

import SwiftUI

@main
struct HelloWorldApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowStyle(.hiddenTitleBar)
        .windowResizability(.contentSize)
    }
}
