//
//  IntrinsicSIzeUIView.swift
//  lottie-test
//
//  Created by Christophe Hoste on 23.04.20.
//  Copyright © 2020 Christophe Hoste. All rights reserved.
//

import UIKit
import Lottie

class CustomView: UIView {

    let lottieView = AnimationView(name: "Cloud2")

    override var intrinsicContentSize: CGSize {
        return .init(width: frame.height, height: frame.height)
    }

    init() {
        super.init(frame: .zero)
        backgroundColor = .systemOrange
        
        lottieView.loopMode = .loop
        lottieView.play()

        addSubview(lottieView)
        lottieView.centerInSuperview()
    }

    override func layoutSubviews() {
        invalidateIntrinsicContentSize()
        layer.cornerRadius = frame.height / 2

        lottieView.constrainWidth(constant: frame.height-8)
        lottieView.constrainHeight(constant: frame.height-8)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
