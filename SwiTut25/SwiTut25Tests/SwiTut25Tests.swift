//
//  SwiTut25Tests.swift
//  SwiTut25Tests
//
//  Created by kmo on 1/12/25.
//

import Testing
@testable import SwiTut25

struct PalindromeChecker {
    func isPalindrome(_ string: String) -> Bool {
        guard !string.isEmpty else { return true }
        let lowercaseString = string.lowercased().replacingOccurrences(of: " ", with: "")
        let reversedString = String(lowercaseString.reversed())
        return lowercaseString == reversedString
    }
}

let palindromeExamples: [String] = ["", "a", "abba", "abcba", "abcba abcba"]
let morePalindromeExamples: [String] = ["zxyxz", "uuuuu"]

struct SwiTut25Tests {
    
    var palindromeChecker: PalindromeChecker
    
    init() async throws {
        palindromeChecker = PalindromeChecker()
    }
    
    @Test func example() async throws {
        #expect(1 + 1 == 2)
    }
    
    @Test("Palindrome examples", arguments: palindromeExamples) func IsPalindrome(palindrome: String) async throws {
        #expect(palindromeChecker.isPalindrome(palindrome))
    }
    
    @Test("Non-palindrome examples", arguments: [
        "abc",
        "abcba bla abcba",
    ]) func IsNotPalindrome(notPalindrome: String) async throws {
        #expect(!palindromeChecker.isPalindrome(notPalindrome))
    }
    
    @Test(arguments: palindromeExamples, morePalindromeExamples)
    func PairsOfPalindromeExamples(palindrome0: String, palindrome1: String) async throws {
        let palindrome = "\(palindrome0) \(palindrome1) \(palindrome0)"
        #expect(palindromeChecker.isPalindrome(palindrome))
    }
}
