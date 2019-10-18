//
//  ViewController.swift
//  ult_converter
//
//  Created by Marc Lee on 7/9/19.
//  Copyright © 2019 Marc Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var resultTable: UITableView!
    @IBOutlet weak var unitOption: UIPickerView!
    
    private var get = Array<String>()
    private var pickRow: Int? = 0
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (get.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = resultTable.dequeueReusableCell(withIdentifier: "resultCell", for: indexPath)
        cell.textLabel?.text = get[indexPath.row]
        
        return (cell)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let unit = category[myindex].name
        titleLabel.text = unit + " Converter"
        inputText.placeholder = unit
        self.resultTable.isHidden = true
        self.resultTable.tableFooterView = UIView()
        self.unitOption.dataSource = self
        self.unitOption.delegate = self
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.resultTable.flashScrollIndicators()
    }
    
    @IBAction func convertBtn(_ sender: Any) {
        let value = Double(inputText.text!)
        let conv = conversion()
        pickRow = unitOption?.selectedRow(inComponent: 0)
        if (value == nil) {
            self.resultTable.isHidden = true
            alertHandler(title: "Input Error", message: "Please enter correct input!")
        } else {
            switch (myindex) {
            case 0:
                get = conv.getDistance(userinput: value!, pickerIndex: pickRow!)
                
            case 1:
                get = conv.getWeight(userinput: value!, pickerIndex: pickRow!)
            case 2:
                get = conv.getArea(userinput: value!, pickerIndex: pickRow!)
            default:
                get = conv.getTemp(input: value!, pickerIndex: pickRow!)
            }
            self.resultTable.isHidden = false
            self.resultTable.reloadData()
            self.view.endEditing(true)
        }
    
    }
    
    func alertHandler(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        let picker_info = category[myindex].units
        return picker_info.count
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        var label = UILabel()
        if let v = view {
            label = v as! UILabel
        }
        label.textAlignment = .center
        label.text = category[myindex].units[row]
        label.font = UIFont(name: "Raleway", size: 14)
        return label
    }
}
