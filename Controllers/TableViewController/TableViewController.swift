//
//  TableViewController.swift
//  ult_converter
//
//  Created by Marc Lee on 7/9/19.
//  Copyright © 2019 Marc Lee. All rights reserved.
//

import UIKit

let category = [Info(name: "Distance", image: "len_icon", units: ["mm", "cm", "m", "km", "mile", "foot", "yard", "inch"]), Info(name: "Weight", image: "weight_icon", units: ["mg", "g", "kg", "t", "gr", "oz", "lb"]), Info(name: "Area", image: "area_icon", units: ["m²", "ha", "km²", "ft²", "yd²", "ac"]), Info(name: "Tempereature", image: "temp_icon", units: ["°C", "°F", "K", "°R"])]
var myindex = 0

class Header: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    let headerLabel: UILabel = {
        let label = UILabel()
        label.text = "Select Unit"
        label.textColor = .lightGray
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

class Footer: UIView {
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
        label.textColor = .lightGray
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

class WordCell: UITableViewCell {
    
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

class TableViewController: UITableViewController {
    let cellId = "cell"
    
    override func loadView() {
        super.loadView()
        navigationController?.navigationBar.topItem?.title = "Unit Converter"
        self.tableView.register(WordCell.self, forCellReuseIdentifier: cellId)
//        self.tableView.register(Dark_WordCell.self, forCellReuseIdentifier: cellId)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return category.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! WordCell
        let option = category[indexPath.row]
        cell.wordLabel.text = option.name
        cell.unitImageView.image = UIImage(named: option.image)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myindex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return Header()
//        return Header()
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return Footer()
    }
    
}
