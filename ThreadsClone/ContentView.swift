//
//  ContentView.swift
//  ThreadsClone
//
//  Created by jinam on 6/17/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.colorPalette.backgroundColor.ignoresSafeArea()
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                    .foregroundColor(Color.colorPalette.accentColor)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
