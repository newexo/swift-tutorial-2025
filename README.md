# Swift Tutorial 2025

This project is a tutorial for Swift 6 and Xcode 16.0. It is a personal project to refresh my knowledge of Swift and to 
learn new features of the language.

## Swift Test

This is a test for Swift code:

```swift
import Testing
@testable import SwiTut25

struct SwiTut25Tests {

    @Test func example() async throws {
        #expect(1 + 1 == 2)
    }

}
```

The test functions are marked with the `@Test` attribute. The `async` keyword is used to mark the test function as
asynchronous. The `throws` keyword is used to mark the test function as throwing. The `#expect` function is used to
assert that the condition is true, in this case that `1 + 1 == 2`.
