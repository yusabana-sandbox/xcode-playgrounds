//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print(str)

/*: Create a bulleted list of animals
 ### Some Animals
 * Cat
 * Dog
 * Llama
*/

import Foundation

class Regexp {
    let internalRegexp: NSRegularExpression
    let pattern: String
    
    init(_ pattern: String) {
        self.pattern = pattern
        self.internalRegexp = try! NSRegularExpression( pattern: pattern, options: NSRegularExpressionOptions.CaseInsensitive)
    }
    
    func isMatch(input: String) -> Bool {
        let matches = self.internalRegexp.matchesInString( input, options: [], range:NSMakeRange(0, input.characters.count) )
        return matches.count > 0
    }
    
    func matches(input: String) -> [String]? {
        if self.isMatch(input) {
            let matches = self.internalRegexp.matchesInString( input, options: [], range:NSMakeRange(0, input.characters.count) )
            var results: [String] = []
            for i in 0 ..< matches.count {
                results.append( (input as NSString).substringWithRange(matches[i].range) )
            }
            return results
        }
        return nil
    }
}

var pattern = "bhoge$"

var moji = "def hello(name)"

Regexp(pattern).isMatch("hogefugahoge")
