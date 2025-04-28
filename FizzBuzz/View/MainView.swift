//
//  ContentView.swift
//  FizzBuzz
//
//  Created by Ronjie Diafante Man-on on 4/28/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            
            BackgroundTextView(text: "FizzBuzzView", color: .red)
                .tabItem {
                    Label("FizzBuzz", systemImage: "bubbles.and.sparkles")
                }
            BackgroundTextView(text: "CodeCreatorView", color: .green)
                .tabItem {
                    Label("Code", systemImage: "note.text")
                }
            BackgroundTextView(text: "AboutView", color: .blue)
                .tabItem {
                    Label("About", systemImage: "info.bubble.fill")
                }
        }
    }
}

#Preview {
    MainView()
}
