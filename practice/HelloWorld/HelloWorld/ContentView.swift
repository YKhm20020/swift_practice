//
//  ContentView.swift
//  HelloWorld
//
//  Created by 木村優哉 on 2023/10/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        
    }
}


#Preview {
    ContentView()
}
