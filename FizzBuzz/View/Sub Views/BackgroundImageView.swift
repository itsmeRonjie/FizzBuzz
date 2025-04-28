//
//  BackgroundImageView.swift
//  FizzBuzz
//
//  Created by Ronjie Diafante Man-on on 4/28/25.
//

import SwiftUI

struct BackgroundImageView: View {
    let imageURL = "https://images.pexels.com/photos/6387827/pexels-photo-6387827.jpeg?auto=compress&cs=tinysrgb&w1600"
    var body: some View {
        GeometryReader { geometry in
            AsyncImage(
                url: URL(string: imageURL),
                transaction: Transaction(animation: .default)
            ) { phase in
                switch phase {
                    
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                        .blur(radius: 0.3)
                default:
                    Color.blue
                        .opacity(0.3)
                }
            }
            .ignoresSafeArea()
            .frame(
                width: geometry.size.width,
                height: geometry.size.height
            )
        }
    }
}

#Preview {
    BackgroundImageView()
}
