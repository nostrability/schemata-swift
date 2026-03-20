import XCTest
@testable import SchemataSwift

final class SchemataTests: XCTestCase {
    func testGetKind1Schema() {
        let schema = Schemata.get("kind1Schema")
        XCTAssertNotNil(schema)
    }

    func testGetNoteSchema() {
        let schema = Schemata.get("noteSchema")
        XCTAssertNotNil(schema)
    }

    func testGetNonexistent() {
        XCTAssertNil(Schemata.get("nonexistent"))
    }

    func testKeysCount() {
        XCTAssertGreaterThan(Schemata.keys().count, 100)
    }
}
