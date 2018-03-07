//
//  DestiniView.swift
//  Destini
//
//  Created by Miyoshi Masataka on 2018/03/07.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit

class DestiniView: UIView {
    
    let bottomButton: UIButton = {
       
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("Bottom Button", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15)
        button.layer.cornerRadius = 5
        button.tag = 2
        button.addTarget(self, action: #selector(ViewController.buttonTapped(_:)), for: .touchUpInside)
        
        return button
        
    }()
    
    let topBotton: UIButton = {
       
        let button = UIButton()
        button.backgroundColor = .red
        button.setTitle("Top Button", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15)
        button.layer.cornerRadius = 5
        button.tag = 1
        button.addTarget(self, action: #selector(ViewController.buttonTapped(_:)), for: .touchUpInside)
        
        return button
        
    }()
    
    let textArea: UILabel = {
       
        let textView = UILabel()
        textView.textColor = .white
        textView.numberOfLines = 0
        
        return textView
        
    }()
    
    let restartButton: UIButton = {
       
        let button = UIButton()
        button.tintColor = .white
        button.setTitle("Restart", for: .normal)
        button.addTarget(self, action: #selector(ViewController.restartTapped(_:)), for: .touchUpInside)
        
        return button
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Add Views
        [bottomButton, topBotton, textArea, restartButton].forEach{ self.addSubview($0) }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // layout
    override func layoutSubviews() {
        
        bottomButton.anchor(
            top: nil,
            leading: self.leadingAnchor,
            bottom: self.bottomAnchor,
            trailing: self.trailingAnchor,
            padding: .init(top: 0, left: 10, bottom: 20, right: 10),
            size: .init(width: 0, height: 50)
        )
        
        topBotton.anchor(
            top: nil,
            leading: self.leadingAnchor,
            bottom: bottomButton.topAnchor,
            trailing: self.trailingAnchor,
            padding: .init(top: 10, left: 10, bottom: 20, right: 10)
        )
        topBotton.anchorSize(to: bottomButton)
        
        textArea.anchor(
            top: self.safeAreaLayoutGuide.topAnchor,
            leading: self.leadingAnchor,
            bottom: topBotton.topAnchor,
            trailing: self.trailingAnchor,
            padding: .init(top: 10, left: 10, bottom: 20, right: 10)
        )
        
        restartButton.anchor(
            top: self.safeAreaLayoutGuide.topAnchor,
            leading: self.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 10, left: 10, bottom: 0, right: 0)
        )
        
    }
    
    
}












