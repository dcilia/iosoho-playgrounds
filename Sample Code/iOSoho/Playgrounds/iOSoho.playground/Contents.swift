//: Playground - noun: a place where people can play

import UIKit

/**
 1. Select the iOS Simulator in the schemes
 2. Build the .framework target
 3. Run the Playground
 4. Profit.
 
 (don't forget to annotate your classes/structs/enums etc. with
 visibility modifiers (public / private etc.)
 */


import iOSohoKit



//
//
//let vc = ViewController(nibName: nil, bundle: nil)
let bundle = Bundle(for: ViewController.self)
let storyboard = UIStoryboard(name: "Main", bundle: bundle)
let vc = storyboard.instantiateInitialViewController()!


let app = playgroundControllers(device: .phone3_5inch, orientation: Orientation.portrait, child: vc, additionalTraits: vc.traitCollection)

//vc.changeBackgroundColor(to: UIColor.red)

import PlaygroundSupport

PlaygroundPage.current.liveView = app.parent


