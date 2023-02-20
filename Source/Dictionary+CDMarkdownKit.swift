//
//  Dictionary+CDMarkdownKit.swift
//  CDMarkdownKit
//
//  Created by Christopher de Haan on 11/28/18.
//
//  Copyright © 2016-2022 Christopher de Haan <contact@christopherdehaan.me>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#if os(iOS) || os(tvOS) || os(watchOS)
    import UIKit
#elseif os(macOS)
    import Cocoa
#endif

internal extension Dictionary where Key == CDAttributedStringKey {

    mutating func addFont(_ font: Value) {
        self[NSAttributedString.Key.font] = font
    }

    mutating func addForegroundColor(_ foregroundColor: Value) {
        self[NSAttributedString.Key.foregroundColor] = foregroundColor
    }

    mutating func addBackgroundColor(_ backgroundColor: Value) {
        self[NSAttributedString.Key.backgroundColor] = backgroundColor
    }

    mutating func addParagraphStyle(_ paragraphStyle: Value) {
        self[NSAttributedString.Key.paragraphStyle] = paragraphStyle
    }

    mutating func addStrikethroughColor(_ strikethroughColor: Value) {
        self[NSAttributedString.Key.strikethroughColor] = strikethroughColor
    }

    mutating func addStrikethroughStyle(_ strikethroughStyle: NSUnderlineStyle) {
        self[NSAttributedString.Key.strikethroughStyle] = strikethroughStyle.rawValue as? Value
    }

    mutating func addUnderlineColor(_ underlineColor: Value) {
        self[NSAttributedString.Key.underlineColor] = underlineColor
    }

    mutating func addUnderlineStyle(_ underlineStyle: NSUnderlineStyle) {
      self[NSAttributedString.Key.underlineStyle] = underlineStyle.rawValue as? Value
    }
}
