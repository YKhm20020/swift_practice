//
//  ContentView.swift
//  practice2
//
//  Created by 木村優哉 on 2023/10/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.green)
                .frame(width: 300, height: 300)
            VStack{
                HStack{
                    Rectangle()
                        .foregroundColor(.black)
                        .frame(width: 70, height: 70)
                    Rectangle()
                        .foregroundColor(.black)
                        .frame(width: 70, height: 70)
                }
                Rectangle()
                    .foregroundColor(.black)
                    .frame(width: 50, height: 20)
                Rectangle()
                    .foregroundColor(.black)
                    .frame(width: 100, height: 80)
            }
        }
    }
}

#Preview {
    ContentView()
}
