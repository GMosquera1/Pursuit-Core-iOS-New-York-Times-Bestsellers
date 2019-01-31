//
//  DetailView.swift
//  NYTBestsellers
//
//  Created by Genesis Mosquera on 1/28/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class DetailView: UIView {
    
    public lazy var bookImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "placeholder-image-2")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var bookAuthor: UILabel = {
        let label = UILabel()
        label.text = "Michelle Obama"
        label.textAlignment = .center
        return label
    }()
    
    lazy var bookDescription: UITextView = {
        let textView = UITextView()
        textView.text = "long description here"
        textView.textAlignment = .center
        return textView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    private func commonInit() {
        setConstraints()
    }
    
    func setConstraints() {
        addSubview(bookAuthor)
        addSubview(bookImage)
        addSubview(bookDescription)
        
        bookImage.translatesAutoresizingMaskIntoConstraints = false
        bookAuthor.translatesAutoresizingMaskIntoConstraints = false
        bookDescription.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            bookImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.35), bookImage.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.7),
            bookImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            bookImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            
            bookAuthor.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            bookAuthor.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            bookAuthor.topAnchor.constraint(equalTo: bookImage.bottomAnchor, constant: 22),
            
            bookDescription.leadingAnchor.constraint(equalTo: self.leadingAnchor), bookDescription.trailingAnchor.constraint(equalTo: self.trailingAnchor), bookDescription.topAnchor.constraint(equalTo: bookAuthor.bottomAnchor, constant: 60),
            bookDescription.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            
            
            ])
    }
    
}
