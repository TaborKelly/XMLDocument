import XCTest
import XMLDocumentLib
import XMLDocumentTests

registerSignals({
    print("Got backtrace: \n\($0)")
})

var tests = [XCTestCaseEntry]()
tests += XMLDocumentTests.allTests()
XCTMain(tests)
