//
//  ViewController.swift
//  lottie-test
//
//  Created by Christophe Hoste on 23.04.20.
//  Copyright © 2020 Christophe Hoste. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Syncing..."
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.textColor = .systemOrange
        return label
    }()

    let subLabel: UILabel = {
        let label = UILabel()
        label.text = "3.2 Mb/s"
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.textColor = .systemGray
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5

        setupSyncView()
    }

    func setupSyncView() {
        let syncView = UIView()
        syncView.backgroundColor = .white
        syncView.layer.cornerRadius = 10

        view.addSubview(syncView)
        syncView.anchor(top: view.safeAreaLayoutGuide.topAnchor,
                        leading: view.leadingAnchor,
                        bottom: nil,
                        trailing: view.trailingAnchor,
                        padding: .init(top: 50, left: 32, bottom: 0, right: 32))

        let labelStackView = UIStackView(arrangedSubviews: [titleLabel, subLabel])
        labelStackView.axis = .vertical

        let stackView = UIStackView(arrangedSubviews: [labelStackView, UIView(), CustomView()])

        syncView.addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 16, left: 16, bottom: 16, right: 16))

    }
}
