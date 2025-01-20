//
//  ContentView.swift
//  Elvis
//
//  Created by Ethan Soroko on 1/20/25.
//

import SwiftUI

struct ContentView: View {
    @State var imageName = ""
    @State var message = ""
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            HStack {
                Button("Peace") {
                    imageName = "peacesign"
                    message = "Peace"
                }
                Button("Love") {
                    imageName = "heart"
                    message = "Love"
                }
                Button("Understanding") {
                    imageName = "lightbulb"
                    message = "Understanding"
                }
            }
            .tint(.purple)
            .buttonStyle(.borderedProminent)
            
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
