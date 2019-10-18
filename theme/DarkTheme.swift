//
//  DarkTheme.swift
//  ult_converter
//
//  Created by Jieun Park on 9/27/19.
//  Copyright © 2019 Marc Lee. All rights reserved.
//

import UIKit

class Dark_Header: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    let headerLabel: UILabel = {
        let label = UILabel()
        label.text = "Use Switch to change to light theme"
        label.textColor = .white
        label.backgroundColor = .black
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setupView() {
        addSubview(headerLabel)
        headerLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        headerLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        headerLabel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        headerLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class Dark_Footer: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    /* Footerlabel for footer cell */
    let footerLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = label.font.withSize(10)
        label.text = "Ultimate Unit Converter\n\n© 2019 Chaghwan(Marc) Lee. All rights reserved."
        label.textColor = .white
        label.backgroundColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setupView() {
        addSubview(footerLabel)
        
        footerLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        footerLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        footerLabel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        footerLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class Dark_WordCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style:style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let unitImageView: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 5
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let wordLabel: UILabel = {
        let word = UILabel()
        word.font = word.font.withSize(20)
        word.textColor = .white
        word.backgroundColor = .black
        word.translatesAutoresizingMaskIntoConstraints = false
        return word
    }()
    
    func setupView() {
        addSubview(unitImageView)
        addSubview(wordLabel)
        
        /* Auto Layout For Icon Image View */
        unitImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        unitImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12).isActive = true
        unitImageView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        unitImageView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        /* Auto Layout For Label */
        wordLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        wordLabel.leftAnchor.constraint(equalTo: unitImageView.rightAnchor, constant: 40).isActive = true
        wordLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        wordLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }
}
