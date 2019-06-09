import XCTest
import SwiftUI
@testable import SwiftUIExtensions

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
final class SwiftUIExtensionsTests: XCTestCase {
    
    // MARK: - ContentSizeCategory
    func testAllCases_returnsAllSizeCategoryCases() {
        let cases = ContentSizeCategory.allCases
        
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
    
    func testCommonCases_returnsExpectedSizeCategoryCases() {
        let cases = ContentSizeCategory.commonCases
        
        XCTAssertTrue(cases.count == 4, "Unexpected number of size categories.")
        
        XCTAssertEqual(cases[0], .extraSmall)
        XCTAssertEqual(cases[1], .medium)
        XCTAssertEqual(cases[2], .large)
        XCTAssertEqual(cases[3], .extraExtraLarge)
    }
    
    // MARK: - ColorScheme
    func testAllCases_ReturnsAllColorSchemeCases() {
        let cases = ColorScheme.allCases
        
        XCTAssertTrue(cases.count == 2, "Unexpected number of color schemes.")
        
        XCTAssertEqual(cases[0], .light)
        XCTAssertEqual(cases[1], .dark)
    }
}
