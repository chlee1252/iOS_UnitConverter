//
//  VolumeFormula.swift
//  ult_converter
//
//  Created by Marc Lee on 9/14/19.
//  Copyright © 2019 Marc Lee. All rights reserved.
//

import Foundation

class VolumeFormula {

    
    func start_l(userinput: Double) -> [Double] {
        
        let l = userinput
        let ltocc = userinput * 1000
        let ltoml = ltocc
        let ltocm = l
        let ltom = l
        let ltoin = l
        let ltoft = l
        let ltoyd = l
        let ltogal = l
        let ltobbl = l
        let ltooz = l
        let result = [ltocc, ltoml, l, ltocm, ltom, ltoin, ltoft, ltoyd, ltogal, ltobbl, ltooz]
        
        return result
    }
}
