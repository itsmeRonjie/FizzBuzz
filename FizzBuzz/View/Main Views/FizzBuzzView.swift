//
//  FizzBuzzView.swift
//  FizzBuzz
//
//  Created by Ronjie Diafante Man-on on 4/28/25.
//

import SwiftUI

struct FizzBuzzView: View {
    let MAX = 100
    let fizzNum = 3
    let buzzNum = 5
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<MAX, id: \.self) { i in
                    if i % fizzNum == 0 && i % buzzNum == 0 {
                        NiceTextView(text: "FizzBuzz")
                    } else if i % fizzNum == 0 {
                        NiceTextView(text: "Fizz")
                    } else if i % buzzNum == 0 {
                        NiceTextView(text: "Buzz")
                    } else {
                        NiceTextView(text: String(i))
                    }
                }
            }
        }
    }
}

#Preview {
    FizzBuzzView()
}
