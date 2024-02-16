//
//  ContentView.swift
//  NFT-preview-card-component
//
//  Created by Marcos Chong on 16/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack (alignment: .leading){
                Image("image-equilibrium")
                    .resizable()
                    .frame(width: 300, height: 300, alignment: .center)
                Text("Equilibrium #3429")
                    .padding(.top)
                    .foregroundColor(.white)
                    .font(.custom("Outfit-Bold", size: 30))
                Text("Our equilibrium collection promotes balance and calm.")
                    .padding(.top, -8)
                    .font(.custom("Outfit-Light", size: 20))
                    .foregroundColor(Color("soft-blue"))
                HorizontalView()
                Divider()
                    .frame(height: 0.5)
                    .padding(.horizontal, 30)
                    .background(Color("soft-blue"))
                HorizontalViewImage()
            }
            .padding(25)
            .background{
                Color("very-dark-blue-card")
            }
            .cornerRadius(15)
            
        }
        .padding(25)
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background {
                    Color("very-dark-blue-card-main")
                        .ignoresSafeArea()
                }
        
    }
}

struct HorizontalView: View {
    var body: some View {
        HStack {
            Label("0.041ETH", image: "icon-ethereum")
                .foregroundColor(Color("cyan"))
                .font(.custom("Outfit-Bold", size: 20))
            Spacer()
            Label("3 days left", image: "icon-clock")
                .foregroundColor(Color("soft-blue"))
                .font(.custom("Outfit-Medium", size: 20))
        }
    }
}

struct HorizontalViewImage: View {
    var body: some View {
        HStack {
            Image("image-avatar")
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 1))
            
            Text("Creation of")
                .foregroundColor(Color("soft-blue"))
                .padding(.leading)
                .font(.custom("Outfit-Light", size: 20))
            Text("Jules Wyvern")
                .foregroundColor(.white)
                .font(.custom("Outfit-Light", size: 20))
        }
        .padding(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
