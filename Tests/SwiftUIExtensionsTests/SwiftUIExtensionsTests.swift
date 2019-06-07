import XCTest
import SwiftUI
@testable import SwiftUIExtensions

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
final class SwiftUIExtensionsTests: XCTestCase {
    
    // MARK: - ContentSizeCategory
    func testCommon_ReturnsAllSizeCategoryCases() {
        let cases = ContentSizeCategory.common
        
        XCTAssertTrue(cases.count == 12, "Unexpected number of size categories.")
        
        XCTAssertEqual(cases[0], .extraSmall)
        XCTAssertEqual(cases[1], .small)
        XCTAssertEqual(cases[2], .medium)
        XCTAssertEqual(cases[3], .large)
        XCTAssertEqual(cases[4], .extraLarge)
        XCTAssertEqual(cases[5], .extraExtraLarge)
        XCTAssertEqual(cases[6], .extraExtraExtraLarge)
        XCTAssertEqual(cases[7], .accessibilityMedium)
        XCTAssertEqual(cases[8], .accessibilityLarge)
        XCTAssertEqual(cases[9], .accessibilityExtraLarge)
        XCTAssertEqual(cases[10], .accessibilityExtraExtraLarge)
        XCTAssertEqual(cases[11], .accessibilityExtraExtraExtraLarge)
    }
}
