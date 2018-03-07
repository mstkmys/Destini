//
//  ViewController.swift
//  Destini
//
//  Created by Miyoshi Masataka on 2018/03/07.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let destiniView: DestiniView = {
       
        let view = DestiniView(frame: UIScreen.main.bounds)
        view.backgroundColor = .white
        
        return view
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add View
        [destiniView].forEach{ self.view.addSubview($0) }
        
    }

}














