//
//  AppDelegate.swift
//  KSView
//
//  Created by Kauntey Suryawanshi on 11/10/15.
//  Copyright © 2015 Kauntey Suryawanshi. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    @IBOutlet weak var testView: KSView!

    @IBOutlet weak var labelBorderWidth: NSTextField!
    @IBOutlet weak var labelCornerRadius: NSTextField!

    @IBAction func cornerRadiusAction(sender: NSSlider) {
        testView.cornerRadius = CGFloat(sender.intValue)
        labelCornerRadius.stringValue = "Corner Radius - [\(sender.intValue)]"
    }

    @IBAction func borderWidthAction(sender: NSSlider) {
        testView.borderWidth = CGFloat(sender.intValue)
        labelBorderWidth.stringValue = "Border Width - [\(sender.intValue)]"
    }

    @IBAction func backgroundColorAction(sender: NSColorWell) {
        testView.backgroundColor = sender.color
    }

    @IBAction func borderColorAction(sender: NSColorWell) {
        testView.borderColor = sender.color
    }

}

