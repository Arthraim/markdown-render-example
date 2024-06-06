//
//  ViewController.swift
//  render-example
//
//  Created by Arthur Wang on 2024/6/6.
//

import UIKit
import Markdown

class ViewController: UIViewController {

    @IBOutlet weak var textview: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let source = """
        A `MarkupWalker` that **dumps** a textual representation of a `Markup` tree for debugging.

        - note: This type is utilized by a public `Markup.dump()` method available on all markup elements.

        For example, this doc comment parsed as markdown would look like the following.

        """
        var document = Document(parsing: source)
        print(document.debugDescription())
        var mapper = Mapper()
        mapper.visit(document)
        textview.attributedText = mapper.attributedString
    }


}

