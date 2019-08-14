import XCTest
import SwiftUI
@testable import SwiftUIExtensions

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
final class SwiftUIExtensionsTests: XCTestCase {
    
    // MARK: - ContentSizeCategory
    
    func testCommonCases_returnsExpectedSizeCategoryCases() {
        let cases = ContentSizeCategory.commonCases
        
        XCTAssertTrue(cases.count == 4, "Unexpected number of size categories.")
        
        XCTAssertEqual(cases[0], .extraSmall)
        XCTAssertEqual(cases[1], .medium)
        XCTAssertEqual(cases[2], .large)
        XCTAssertEqual(cases[3], .extraExtraLarge)
    }
    
    func testExtremeCases_returnsExpectedSizeCategoryCases() {
        let cases = ContentSizeCategory.extremeCases
        
        XCTAssertTrue(cases.count == 2, "Unexpected number of size categories.")
        
        XCTAssertEqual(cases[0], .extraSmall)
        XCTAssertEqual(cases[1], .accessibilityExtraExtraExtraLarge)
    }
}
