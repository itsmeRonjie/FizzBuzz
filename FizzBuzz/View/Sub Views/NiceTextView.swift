//
//  NiceTextView.swift
//  FizzBuzz
//
//  Created by Ronjie Diafante Man-on on 4/28/25.
//

import SwiftUI

struct NiceTextView: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding()
    }
}

#Preview {
    NiceTextView(text: "Hello")
}
