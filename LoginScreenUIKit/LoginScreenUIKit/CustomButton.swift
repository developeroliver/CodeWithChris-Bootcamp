//
//  CustomButton.swift
//  LoginScreenUIKit
//
//  Created by olivier geiger on 27/05/2023.
//

import UIKit

class CustomButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    init(backgroundImage: UIImage?, title: String, color: UIColor) {
        super.init(frame: .zero)
        self.setBackgroundImage(backgroundImage, for: .normal)
        self.setTitle(title, for: .normal)
        self.setTitleColor(color, for: .normal)
        configure()
    }
    
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius = 10
        clipsToBounds = true
        contentEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
        contentHorizontalAlignment = .left
    }

}
