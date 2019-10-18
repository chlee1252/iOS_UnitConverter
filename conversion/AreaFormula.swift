//
//  Area_formula.swift
//  ult_converter
//
//  Created by Marc Lee on 9/14/19.
//  Copyright © 2019 Marc Lee. All rights reserved.
//

import Foundation

class AreaFormula {
    func start_meter(userinput: Double) -> Array<Double> {
        /*
         1. m^2 -> m^2
         2. m^2 -> ha
         3. m^2 -> km^2
         4. m^2 -> ft^2
         5. m^2 -> yd^2
         6. m^2 -> ac
         */
        let m = userinput
        let mtoha = m / 10000
        let mtokm = m / 1e+6
        let mtoft = m * 10.764
        let mtoyd = m * 1.196
        let mtoac = m / 4046.856
        let array = [m, mtoha, mtokm, mtoft, mtoyd, mtoac]
        
        return array
    }
    
    func start_ha(userinput: Double) -> Array<Double> {
        let ha = userinput
        let hatom = ha * 10000
        let hatokm = ha / 100
        let hatoft = ha * 107639.104
        let hatoyd = ha * 11959.9
        let hatoac = ha * 2.471
        let array = [hatom, ha, hatokm, hatoft, hatoyd, hatoac]
        return array
    }
    
    func start_km(userinput: Double) -> Array<Double> {
        let km = userinput
        let kmtom = km * 1e+6
        let kmtoha = km * 100
        let kmtoft = km * 1.076e+7
        let kmtoyd = km * 1.196e+6
        let kmtoac = km * 247.105
        let array = [kmtom, kmtoha, km, kmtoft, kmtoyd, kmtoac]
        return array
    }
    
    func start_ft(userinput: Double) -> Array<Double> {
        let ft = userinput
        let fttom = ft / 10.764
        let fttoha = ft / 107639.104
        let fttokm = ft / 1.076e+7
        let fttoyd = ft / 9
        let fttoac = ft / 43560
        let array = [fttom, fttoha, fttokm, ft, fttoyd, fttoac]
        return array
    }
    
    func start_yd(userinput: Double) -> Array<Double> {
        let yd = userinput
        let ydtom = yd / 1.196
        let ydtoha = yd / 11959.9
        let ydtokm = yd / 1.196e+6
        let ydtoft = yd * 9
        let ydtoac = yd / 4840
        let array = [ydtom, ydtoha, ydtokm, ydtoft, yd, ydtoac]
        
        return array
    }
    
    func start_ac(userinput: Double) -> Array<Double> {
        let ac = userinput
        let actom = ac * 4046.856
        let actoha = ac / 2.471
        let actokm = ac / 247.105
        let actoft = ac * 43560
        let actoyd = ac * 4840
        let array = [actom, actoha, actokm, actoft, actoyd, ac]
        return array
    }
}
