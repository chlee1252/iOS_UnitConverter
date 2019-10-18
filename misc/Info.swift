//
//  unitInformation.swift
//  ult_converter
//
//  Created by Marc Lee on 9/27/19.
//  Copyright © 2019 Marc Lee. All rights reserved.
//

import Foundation

class Info: NSObject {
    let name: String
    let image: String
    let units: [String]
    
    init(name: String, image: String, units: [String]) {
        self.name = name
        self.image = image
        self.units = units 
    }
}
