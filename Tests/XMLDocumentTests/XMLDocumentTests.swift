import XCTest
@testable import XMLDocument

final class XMLDocumentTests: XCTestCase {
    func testEmptyString() {
        XCTAssertThrowsError(try parseData(fromString: ""))
    }

    static var allTests = [
        ("testEmptyString", testEmptyString),
    ]
}
