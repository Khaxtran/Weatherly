//
//  ContentView.swift
//  Weatherly
//
//  Created by Kha Tran on 2/5/2022.
//

import SwiftUI

struct ContentView: View {
    
    let gradient = LinearGradient(
            gradient: Gradient(stops: [
                .init(color: .black, location: 0.2),
                .init(color: .clear, location: 0.4)
            ]),
            startPoint: .bottom,
            endPoint: .top
        )
    
    var body: some View {
        ZStack {
            Image("Sky")
                .resizable()
                .frame(minWidth: 750, maxWidth: 900, minHeight: 1100, maxHeight: 1350, alignment: .center)
                .aspectRatio(contentMode: .fill)
                .overlay(
                    ZStack {
                        Image("Sky")
                            .resizable()
                            .blur(radius: 100, opaque: false)
                            .mask(gradient)
                        gradient
                    }
                )
            Image("House")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 400, maxHeight: 400)
                .background(Color.gray.blur(radius: 80, opaque: false).opacity(0.5))
                .padding(.top, 100)
            
            VStack {
                Spacer()
                Text("Montreal")
                    .font(.system(size: 40, weight: .regular, design: .default))
                Text("19°")
                    .font(.system(size: 80, weight: .thin, design: .default))
                Text("Mostly clear")
                    .font(.headline)
                HStack {
                    Text("L:18°")
                    Text("H:24°")
                }
                .font(.system(size: 20, weight: .bold, design: .default))
                Spacer()
                Spacer()
                VStack {
                    Text("Hello")
                }
                .frame(maxWidth: .infinity, maxHeight: 400)
                .cornerRadius(50)
                .background(.ultraThinMaterial)
            }
            .foregroundColor(.white)
        
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
