//
//  ViewController.swift
//  LoginScreenUIKit
//
//  Created by olivier geiger on 27/05/2023.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - PROPERTIES
    private let backgroundImageView: UIImageView = {
        let viewImage           = UIImageView()
        viewImage.image         = UIImage(named: "Background")
        viewImage.contentMode   = .scaleAspectFill
        
        return viewImage
    }()
    
    private let facebookButton = CustomButton(backgroundImage: UIImage(named: "FB"), title: "Sign in With Facebook", color: .white)
    
    private let googleButton = CustomButton(backgroundImage: UIImage(named: "Google"), title: "Sign in with Google", color: .black)
    
    private let emailButton = CustomButton(backgroundImage: UIImage(named: "Email"), title: "Sign in with Email", color: .black)
    
    private let titleLabel: UILabel = {
        let label               = UILabel()
        label.text              = "Social\nSquid"
        label.font              = UIFont.systemFont(ofSize: 34, weight: .bold)
        label.textColor         = .black
        label.numberOfLines     = 0
        label.lineBreakMode     = .byWordWrapping
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let subtitleLabel: UILabel = {
        let label           = UILabel()
        label.text          = "Login or create an account"
        label.font          = UIFont.systemFont(ofSize: 20)
        label.textColor     = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        
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
        configureBackgroundImage()
        configureFacebookButton()
        configureGoogleButton()
        configureEmailButton()
        configureSubtitleLabel()
        configuretitleLabel()
    }
    
    
    private func configureBackgroundImage() {
        view.addSubview(backgroundImageView)
        view.sendSubviewToBack(backgroundImageView)
        backgroundImageView.frame = view.bounds
    }
    
    
    private func configureFacebookButton() {
        view.addSubview(facebookButton)
        
        NSLayoutConstraint.activate([
            facebookButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            facebookButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            facebookButton.widthAnchor.constraint(equalToConstant: 285),
            facebookButton.heightAnchor.constraint(equalToConstant: 69),
        ])
    }
    
    
    private func configureGoogleButton() {
        view.addSubview(googleButton)
        
        NSLayoutConstraint.activate([
            googleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            googleButton.topAnchor.constraint(equalTo: facebookButton.bottomAnchor, constant: 10),
            googleButton.widthAnchor.constraint(equalToConstant: 285),
            googleButton.heightAnchor.constraint(equalToConstant: 69),
        ])
    }
    
    
    private func configureEmailButton() {
        view.addSubview(emailButton)
        
        NSLayoutConstraint.activate([
            emailButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailButton.topAnchor.constraint(equalTo: googleButton.bottomAnchor, constant: 10),
            emailButton.widthAnchor.constraint(equalToConstant: 285),
            emailButton.heightAnchor.constraint(equalToConstant: 69),
        ])
    }
    
    private func configureSubtitleLabel() {
        view.addSubview(subtitleLabel)
        
        NSLayoutConstraint.activate([
            subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            subtitleLabel.bottomAnchor.constraint(equalTo: facebookButton.topAnchor, constant: -20)
        ])
    }
    
    private func configuretitleLabel() {
        view.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: subtitleLabel.topAnchor, constant: -30)
        ])
    }
    
}
