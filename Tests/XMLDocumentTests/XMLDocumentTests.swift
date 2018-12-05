import XCTest
@testable import XMLDocumentLib

final class XMLDocumentTests: XCTestCase {
    func testEmptyString() {
        XCTAssertThrowsError(try parseData(fromString: ""))
    }

    static var allTests = [
        ("testEmptyString", testEmptyString),
    ]
}
