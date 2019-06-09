//
//  SwiftUIExtensions.swift
//  SwiftUIExtensions
//
//  Created by Jason Hawkins on 6/7/19.
//  Copyright © 2019 Jason Hawkins. All rights reserved.
//

import SwiftUI

// MARK: - ContentSizeCategory
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ContentSizeCategory {
    
    /// Returns an array of every available size category.
    public static var allCases: [ContentSizeCategory] = [
        .extraSmall,
        .small,
        .medium,
        .large,
        .extraLarge,
        .extraExtraLarge,
        .extraExtraExtraLarge,
        .accessibilityMedium,
        .accessibilityLarge,
        .accessibilityExtraLarge,
        .accessibilityExtraExtraLarge,
        .accessibilityExtraExtraExtraLarge
    ]
    
    /// Returns an array of common size categories.
    public static var commonCases: [ContentSizeCategory] = [
        .extraSmall,
        .medium,
        .large,
        .extraExtraLarge
    ]
}

// MARK: - ContentSizeCategory
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ColorScheme {
    
    /// Returns an array of all color schemes
    public static var allCases: [ColorScheme] = [
        .light,
        .dark
    ]
}
