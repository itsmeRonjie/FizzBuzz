//
//  FizzBuzzAlgoModel.swift
//  FizzBuzz
//
//  Created by Ronjie Diafante Man-on on 4/28/25.
//

import Foundation

struct FizzBuzzAlgoModel: Identifiable {
    let id = UUID()
    
    let langName: String
    var commentCode: (String) -> String = { code in
        return #"// "# + code
    }
    var versionNumber: Double? = nil
    var imports: String = ""
    var boilerWrapper: (String) -> String = { code in
        return code
    }
    let maxConstDef: String
    let loopWrapper: (String) -> String
    let printString: (String) -> String
    let printInt: () -> String
    var equality: String = "=="
    var moduloSymbol: String = "%"
    let ifStatement: (String, String) -> String
    let elseifStatement: (String, String) -> String
    let elseStatement: (String) -> String
    
    var actualFizzBuzzCode: String {
        let mod3 = "i \(moduloSymbol) 3 \(equality) 0"
        let codeFizz = printString("Fizz")
        
        let mod5 = "i \(moduloSymbol) 5 \(equality) 0"
        let codeBuzz = printString("Buzz")
        
        let mod15 = "i \(moduloSymbol) 15 \(equality) 0"
        let codeFizzBuzz = printString("FizzBuzz")
        
        let printInt = printInt()
        
        let codeInLoop = """
        \(ifStatement(mod15, codeFizzBuzz)) \(elseifStatement(mod3, codeFizz.indent())) \(elseifStatement(mod5, codeBuzz.indent())) \(elseStatement(printInt.indent()))
        """
        
        let mainCode = """
        \(maxConstDef)
        
        \(loopWrapper(codeInLoop))
        """
        
        var versionString = ""
        
        if let versionNumber = versionNumber {
            versionString = " implementation Version \(versionNumber)"
        }
        
        return """
        \(commentCode("FizzBuzz\(versionString) is implemented in the \(langName) programming language."))
        \(imports)
        \(boilerWrapper(mainCode))
        """
    }
}
