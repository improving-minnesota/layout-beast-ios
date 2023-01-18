//
//  ViewController.swift
//  LayoutBeast
//
//  Created by Julian Builes on 10/3/22.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Properties
    private var blueView = UIView()
    private var blueLabel = UILabel()
    private var orangeView = UIView()
    private var orangeLabel = UILabel()

    // MARK: - View Controller life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
    }

    // MARK: - View configuration
    private func configureViews() {
        configureBlueView()
        configureBlueLabel()
        configureOrangeView()
        configureOrangeLabel()
    }

    private func configureBlueView() {
        blueView.backgroundColor = .blue
        blueView.accessibilityIdentifier = "a blue view"
        blueView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blueView)

        NSLayoutConstraint.activate([
            blueView.widthAnchor.constraint(equalToConstant: 100),
            blueView.heightAnchor.constraint(equalToConstant: 100),
            blueView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            blueView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

    private func configureBlueLabel() {
        blueLabel.text = "The blue label"
        blueLabel.accessibilityIdentifier = "a blue label"
        blueLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blueLabel)

        NSLayoutConstraint.activate([
            blueLabel.topAnchor.constraint(equalTo: blueView.bottomAnchor, constant: 20),
            blueLabel.widthAnchor.constraint(equalTo: blueView.widthAnchor, constant: 60),
            blueLabel.heightAnchor.constraint(equalToConstant: 25),
            blueLabel.leadingAnchor.constraint(equalTo: blueView.leadingAnchor)
        ])
    }

    private func configureOrangeView() {
        orangeView.backgroundColor = .orange
        orangeView.accessibilityIdentifier = "an orange view"
        view.addSubview(orangeView)

        NSLayoutConstraint.activate([
            orangeView.widthAnchor.constraint(equalToConstant: 100),
            orangeView.heightAnchor.constraint(equalToConstant: 100),
            orangeView.topAnchor.constraint(equalTo: blueLabel.bottomAnchor, constant: 50),
            orangeView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

    private func configureOrangeLabel() {
        orangeLabel.text = "The orange label"
        orangeLabel.accessibilityIdentifier = "an orange label"
        orangeLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(orangeLabel)

        NSLayoutConstraint.activate([
            orangeLabel.topAnchor.constraint(equalTo: orangeView.bottomAnchor, constant: 20),
            orangeLabel.widthAnchor.constraint(equalTo: orangeView.widthAnchor, constant: 60),
            orangeLabel.heightAnchor.constraint(equalToConstant: 25),
            orangeLabel.leadingAnchor.constraint(equalTo: orangeView.leadingAnchor)
        ])
    }
}

