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
    public static let allCases: [ContentSizeCategory] = [
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
    public static let commonCases: [ContentSizeCategory] = [
        .extraSmall,
        .medium,
        .large,
        .extraExtraLarge
    ]
    
    /// Returns an array of the size categories at the extreme ranges.
    public static let extremeCases: [ContentSizeCategory] = [
        .extraSmall,
        .accessibilityExtraExtraExtraLarge
    ]
}

// MARK: - ColorScheme
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ColorScheme {
    
    /// Returns an array of all color schemes
    public static let allCases: [ColorScheme] = [
        .light,
        .dark
    ]
}

// MARK: - View modifiers
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct AdaptableColorScheme : ViewModifier {
    let appearance: ColorScheme
    
    func body(content: Content) -> some View {
        content
            .environment(\.colorScheme, appearance)
            .background(appearance == .light ? Color.white : Color.black)
            .previewDisplayName(String(describing: appearance))
    }
}

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct DescriptiveContentSizeCategory : ViewModifier {
    let size: ContentSizeCategory
    
    func body(content: Content) -> some View {
        content
            .environment(\.sizeCategory, size)
            .previewLayout(.sizeThatFits)
            .previewDisplayName(String(describing: size))
    }
}

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct iPhoneSE : ViewModifier {
    func body(content: Content) -> some View {
        content
            .previewDevice("iPhone SE")
            .previewDisplayName("iPhone SE")
    }
}

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
struct iPhoneXsMax : ViewModifier {
    func body(content: Content) -> some View {
        content
            .previewDevice("iPhone Xs Max")
            .previewDisplayName("iPhone Xs Max")
    }
}
