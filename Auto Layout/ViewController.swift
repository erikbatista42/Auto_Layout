//
//  ViewController.swift
//  Auto Layout
//
//  Created by Erik Batista on 9/28/17.
//  Copyright © 2017 Erik Batista. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Avoid polluting view did load
    let bearImageView: UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "bear_first"))
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    let descriptionTextView: UITextView = {
       let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "Join us today in our fun and games!"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // here's our entry point to our app
        
        view.addSubview(bearImageView)
        view.addSubview(descriptionTextView)
        setupLayout()
    }
    func setupLayout() {
        bearImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bearImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        bearImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        bearImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        
        descriptionTextView.topAnchor.constraint(equalTo: bearImageView.bottomAnchor, constant: 120).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }

}

