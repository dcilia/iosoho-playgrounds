//
//  ViewController.swift
//  iOSoho
//
//  Created by  dcilia on 8/13/18.
//  Copyright © 2018 Spotify. All rights reserved.
//

import UIKit

public class ViewController: UIViewController {

    var _stackView : UIStackView = {
        let sv = UIStackView(arrangedSubviews: [])
        sv.distribution = .fill
        sv.alignment = .center
        sv.axis = .vertical
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()

    var _button : UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Action", for: .normal)
        button.setTitle("Let Go", for: .highlighted)
        return button
    }()

    var _label : UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello World!"
        return label
    }()


    public override func viewDidLoad() {
        super.viewDidLoad()

        title = "Hello!!"


        let guide = view.layoutMarginsGuide


        view.backgroundColor = UIColor.red

        // Do any additional setup after loading the view, typically from a nib.
        view.addSubview(_stackView)
        _stackView.topAnchor.constraint(equalTo: guide.topAnchor).isActive = true
        _stackView.bottomAnchor.constraint(equalTo: guide.bottomAnchor).isActive = true
        _stackView.leadingAnchor.constraint(equalTo: guide.leadingAnchor).isActive = true
        _stackView.trailingAnchor.constraint(equalTo: guide.trailingAnchor).isActive = true

        let spacer = UIView()
        spacer.translatesAutoresizingMaskIntoConstraints = false
        spacer.backgroundColor = UIColor.yellow
        spacer.heightAnchor.constraint(equalToConstant: 20).isActive = true
        let bottomSpacer = UIView()
        bottomSpacer.backgroundColor = UIColor.green
        bottomSpacer.translatesAutoresizingMaskIntoConstraints = false

        _stackView.addArrangedSubview(spacer)
        _stackView.addArrangedSubview(_label)
        _stackView.addArrangedSubview(_button)
        _stackView.addArrangedSubview(bottomSpacer)

        _stackView.backgroundColor = UIColor.purple

        _button.addTarget(self, action: #selector(animateOut), for: UIControlEvents.touchDown)
        _button.addTarget(self, action: #selector(animateIn), for: UIControlEvents.touchUpInside)

        
    }

    public override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .all
    }

    @objc func animateOut() -> Void {

        UIView.animate(withDuration: 0.4) {
            self._label.alpha = 0.0
        }
    }
    @objc func animateIn() -> Void {

        UIView.animate(withDuration: 0.4) {
            self._label.alpha = 1.0
        }
    }

    public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    public func changeBackgroundColor(to color: UIColor) -> Void {
        view.backgroundColor = color
    }
}

