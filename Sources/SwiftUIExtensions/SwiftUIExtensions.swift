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
    
    /// Returns all size category cases identifiable by self.
    public static let allCasesIdentifiableBySelf = ContentSizeCategory.allCases.identified(by: \.self)
    
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
    
    /// Returns common size category cases identifiable by self.
    public static let commonCasesIdentifiableBySelf = ContentSizeCategory.commonCases.identified(by: \.self)
    
    /// Returns an array of common size categories.
    public static let commonCases: [ContentSizeCategory] = [
        .extraSmall,
        .medium,
        .large,
        .extraExtraLarge
    ]
    
    /// Returns extreme size category cases identifiable by self.
    public static let extremeCasesIdentifiableBySelf = ContentSizeCategory.extremeCases.identified(by: \.self)
    
    /// Returns an array of the size categories at the extreme ranges.
    public static let extremeCases: [ContentSizeCategory] = [
        .extraSmall,
        .accessibilityExtraExtraExtraLarge
    ]
}

// MARK: - ColorScheme
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ColorScheme {
    
    /// Returns all color scheme cases identifiable by self.
    public static let allCasesIdentifiableBySelf = ColorScheme.allCases.identified(by: \.self)
    
    /// Returns an array of all color schemes
    public static let allCases: [ColorScheme] = [
        .light,
        .dark
    ]
}

// MARK: - View modifiers
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct AdaptingColorScheme : ViewModifier {
    private let appearance: ColorScheme
    private let padding: Bool
    
    public init(_ appearance: ColorScheme, padding: Bool = true) {
        self.appearance = appearance
        self.padding = padding
    }
    
    public func body(content: Content) -> some View {
        content
            .padding(.all, padding == true ? 8 : 0)
            .environment(\.colorScheme, appearance)
            .background(appearance == .light ? Color.white : Color.black)
            .previewDisplayName(String(describing: appearance))
    }
}

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct AdaptingContentSizeCategory : ViewModifier {
    private let size: ContentSizeCategory
    private let padding: Bool
    
    public init(_ size: ContentSizeCategory, padding: Bool = true) {
        self.size = size
        self.padding = padding
    }
    
    public func body(content: Content) -> some View {
        content
            .padding(.all, padding == true ? 8 : 0)
            .environment(\.sizeCategory, size)
            .previewLayout(.sizeThatFits)
            .previewDisplayName(String(describing: size))
    }
}

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct iPhoneSE : ViewModifier {
    public func body(content: Content) -> some View {
        content
            .previewDevice("iPhone SE")
            .previewDisplayName("iPhone SE")
    }
}

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct iPhoneXsMax : ViewModifier {
    public func body(content: Content) -> some View {
        content
            .previewDevice("iPhone Xs Max")
            .previewDisplayName("iPhone Xs Max")
    }
}
