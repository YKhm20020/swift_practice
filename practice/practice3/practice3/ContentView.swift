//
//  ContentView.swift
//  practice3
//
//  Created by 木村優哉 on 2023/10/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.yellow)
                .frame(width: 300, height: 300)
            VStack{
                HStack{
                    Rectangle()
                        .frame(width: 60, height: 20)
                    ZStack{
                        Rectangle()
                            .foregroundColor(.gray)
                            .frame(width: 90, height: 90)
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .frame(width: 20, height: 20)
                    }
                    ZStack{
                        Rectangle()
                            .foregroundColor(.gray)
                            .frame(width: 90, height: 90)
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .frame(width: 20, height: 20)
                    }
                    Rectangle()
                        .frame(width: 60, height: 20)
                }
                ZStack{
                    Rectangle()
                        .frame(width: 70, height: 40)
                    VStack{
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: 60, height: 10)
                        Rectangle()
                            .foregroundColor(.red)
                            .frame(width: 60, height: 10)
                    }
                }
            }
        }
        Rectangle()
            .foregroundColor(.blue)
            .frame(width: 300, height: 100)
        HStack{
            Rectangle()
                .foregroundColor(.black)
                .frame(width: 70, height: 30)
            Rectangle()
                .foregroundColor(.black)
                .frame(width: 70, height: 30)
        }
    }
}

#Preview {
    ContentView()
}
