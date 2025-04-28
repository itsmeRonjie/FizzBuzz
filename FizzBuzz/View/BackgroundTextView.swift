//
//  BackgroundText.swift
//  FizzBuzz
//
//  Created by Ronjie Diafante Man-on on 4/28/25.
//

import SwiftUI

struct BackgroundTextView: View {
    let text: String
    let color: Color
    var body: some View {
        ZStack {
            color
                .opacity(0.3)
                .ignoresSafeArea()
            Text(text)
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
    }
}

#Preview {
    BackgroundTextView(
        text: "Hello",
        color: .red
    )
}
