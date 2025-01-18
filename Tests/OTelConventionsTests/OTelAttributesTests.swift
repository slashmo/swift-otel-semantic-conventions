import OTelConventions
import OTelHttpConventions
import XCTest

class OTelHttpAttributesTests: XCTestCase {
    func testAttribute() async throws {
        XCTAssertEqual(OTelAttributes.http.response.status_code, "http.response.status_code")
    }
}
