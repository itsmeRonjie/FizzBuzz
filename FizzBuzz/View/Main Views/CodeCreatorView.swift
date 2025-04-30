//
//  CodeCreatorView.swift
//  FizzBuzz
//
//  Created by Ronjie Diafante Man-on on 4/30/25.
//

import SwiftUI
import UniformTypeIdentifiers

struct CodeCreatorView: View {
    var fizzBuzzAlgoViewModel: FizzBuzzAlgoViewModel = FizzBuzzAlgoViewModel()
    var body: some View {
        NavigationStack {
            List(fizzBuzzAlgoViewModel.fizzBuzzAlgoModels) { item in
                NavigationLink(item.langName) {
                    ZStack {
                        Color
                            .gray
                            .opacity(0.3)
                            .ignoresSafeArea()
                        
                        ScrollView {
                            VStack {
                                Text(item.actualFizzBuzzCode)
                                    .font(.headline)
                                    .padding()
                                    .minimumScaleFactor(0.1)
                                    .contextMenu {
                                        Button {
                                            UIPasteboard.general.string = item.actualFizzBuzzCode
                                        } label: {
                                            Text("Copy to Clipboard")
                                            Image(systemName: "doc.on.doc")
                                        }
                                    }
                            }
                        }
                    }
                }
            }
            .navigationTitle("FizzBuzz")
        }
    }
}

#Preview {
    CodeCreatorView()
}
