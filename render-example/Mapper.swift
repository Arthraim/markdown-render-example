//
//  Mapper.swift
//  markdown-renderer
//
//  Created by Arthur Wang on 2024/6/6.
//

import Foundation
import Markdown
import UIKit

struct Mapper: MarkupWalker {
    var attributedString = NSMutableAttributedString()

    mutating func visitText(_ text: Text) -> () {
        attributedString.append(NSAttributedString(string: text.string, attributes: [
            .font: UIFont.systemFont(ofSize: 14),
        ]))
    }

    mutating func visitStrong(_ strong: Strong) -> () {
        attributedString.append(NSAttributedString(string: strong.plainText, attributes: [
            .font: UIFont.systemFont(ofSize: 14, weight: .bold),
        ]))
    }

    func visitInlineCode(_ inlineCode: InlineCode) -> () {
        attributedString.append(NSAttributedString(string: inlineCode.code, attributes: [
            .font: UIFont.monospacedSystemFont(ofSize: 14, weight: .regular),
            .foregroundColor: UIColor.darkGray,
        ]))
    }
}
