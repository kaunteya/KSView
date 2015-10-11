//
//  KSView.swift
//  KSView
//
//  Created by Kauntey Suryawanshi on 17/08/15.
//  Copyright (c) 2015 Kauntey Suryawanshi. All rights reserved.
//

import Foundation
import Cocoa

@IBDesignable
public class KSView: NSView {
    
    @IBInspectable public var backgroundColor: NSColor = NSColor.clearColor() {
        didSet {
            self.layer!.backgroundColor = backgroundColor.CGColor
        }
    }

    @IBInspectable public var cornerRadius: CGFloat = 2 {
        didSet {
            self.layer?.cornerRadius = cornerRadius
        }
    }

    @IBInspectable public var borderWidth: CGFloat = 1 {
        didSet {
            self.layer?.borderWidth = borderWidth
        }
    }

    @IBInspectable public var borderColor: NSColor = NSColor.blackColor() {
        didSet {
            self.layer?.borderColor = borderColor.CGColor
        }
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        self.wantsLayer = true
        self.layer?.backgroundColor = NSColor.purpleColor().CGColor
        //        TODO: All subview will be drawn in parent views layer
        //        self.canDrawSubviewsIntoLayer = true
    }
}
