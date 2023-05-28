//
//  ViewController.swift
//  LAndscapeUIKit
//
//  Created by olivier geiger on 27/05/2023.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - PROPERTIES
    private let backgroundImage: UIImageView = {
        let imageView           = UIImageView()
        imageView.image         = UIImage(named: "landscape")
        imageView.contentMode   = .scaleAspectFill
        
        return imageView
    }()
    
    private let containerView: UIView = {
        let containerView               = UIView()
        let screenHeight                = UIScreen.main.bounds.height
        let desiredHeight               = screenHeight * 0.3
        containerView.backgroundColor   = UIColor.black.withAlphaComponent(0.8)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            containerView.heightAnchor.constraint(equalToConstant: desiredHeight)
        ])
        
        return containerView
    }()
    
    private let titleLabel: UIView = {
        let label = UILabel()
        label.text = "City by the Sea"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        
        return label
    }()
    
    private let subtitleLabel: UIView = {
        let label = UILabel()
        label.text = "This is such a beautiful place!"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 17, weight: .thin)
        
        return label
    }()
    
    // MARK: - LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configure()
    }
    
    
    // MARK: - LAYOUT FUNCTIONS
    private func configure() {
        configureBackgoundImageView()
        configureContainerView()
        configureTitleLabel()
        configureSubTitleLabel()
    }
    
    
    private func configureBackgoundImageView() {
        view.addSubview(backgroundImage)
        view.sendSubviewToBack(backgroundImage)
        backgroundImage.frame = view.bounds
    }
    
    
    private func configureContainerView() {
        view.addSubview(containerView)
        
        NSLayoutConstraint.activate([
            containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
    
    
    private func configureTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let padding: CGFloat = 20
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: padding),
            titleLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            titleLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding)
        ])
    }
    
    private func configureSubTitleLabel() {
        view.addSubview(subtitleLabel)
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let padding: CGFloat = 20
        
        NSLayoutConstraint.activate([
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            subtitleLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            subtitleLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding)
        ])
    }

}

