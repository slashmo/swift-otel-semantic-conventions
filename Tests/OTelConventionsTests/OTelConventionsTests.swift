import OTelConventions
import OTelHttpConventions
import XCTest

class OTelHttpConventionsTests: XCTestCase {
    func testAttributeName() async throws {
        XCTAssertEqual(OTelConventions.http.response.status_code, "http.response.status_code")
    }
}
