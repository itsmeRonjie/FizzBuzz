//
//  FizzBuzzAlgoModel.swift
//  FizzBuzz
//
//  Created by Ronjie Diafante Man-on on 4/28/25.
//

import Foundation

struct FizzBuzzAlgoModel: Identifiable {
    let id = UUID()
    
    let languageName: String
    var commentCode: (String) -> String = { code in
        "\\" + code
    }
    var versionNumber: Double? = nil
    var imports: String
    var boilerWrapper: (String) -> String = { code in
        code
    }
    let maxConstDef: String
    let loopWrapper: (String) -> String
    let printString: (String) -> String
    let printInt: () -> String
    let equality: String = "=="
    var modulo: String = "%"
    let ifStatement: (String, String) -> String
    let elseIfStatement: (String, String) -> String
    let elseStatement: (String) -> String
    
    var actualFizzBuzzCode: String {
        "FizzBuzz in \(name)"
    }
}
