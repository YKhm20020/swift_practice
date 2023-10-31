//
//  ContentView.swift
//  practice
//
//  Created by 木村優哉 on 2023/10/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.orange)
            .frame(width: 200, height: 50)
        Rectangle()
            .foregroundColor(.red)
            .frame(width: 180, height: 20)
        Rectangle()
            .foregroundColor(.yellow)
            .frame(width: 180, height: 20)
        Rectangle()
            .foregroundColor(.brown)
            .frame(width: 180, height: 20)
        Rectangle()
            .foregroundColor(.green)
            .frame(width: 180, height: 20)
        Rectangle()
            .foregroundColor(.orange)
            .frame(width: 200, height: 50)
    }
}

#Preview {
    ContentView()
}
