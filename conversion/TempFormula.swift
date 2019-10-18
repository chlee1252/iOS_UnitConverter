//
//  TempFormula.swift
//  ult_converter
//
//  Created by Marc Lee on 9/14/19.
//  Copyright © 2019 Marc Lee. All rights reserved.
//

import Foundation

class TempFormula {
    // Converting Start From °C
    func start_C(userinput: Double) -> Array<Double>{
        /*
         1. °C -> °C
         2. °C -> °F
         3. °C -> K
         4. °C -> °R
         */
        let c = userinput
        let c_F = (c * (9/5)) + 32
        let c_K = c + 273.15
        let c_R = (c * (9/5)) + 491.67
        let array = [c, c_F, c_K, c_R]
        return array
    }
    
    // Converting Start from °F
    func start_F(userinput: Double) -> Array<Double> {
        /*
         1. °F -> °F
         2. °F -> °C
         3. °F -> K
         4. °F -> °R
        */
        let f = userinput
        let f_C = (5/9) * (f - 32)
        let f_K = f_C + 273.15
        let f_R = f + 459.67
        let array = [f_C, f, f_K, f_R]
        return array
    }
    
    // Converting Start from K
    func start_K(userinput: Double) -> Array<Double> {
        let k = userinput
        let k_C = k - 273.15
        let k_F = k_C * (9/5) + 32
        let k_R = k * (9/5)
        let array = [k_C, k_F, k, k_R]
        return array
    }
    
    //Converting Start from R
    func start_R(userinput: Double) -> Array<Double> {
        let r = userinput
        let r_C = (r - 491.67) * (5/9)
        let r_F = r - 459.67
        let r_K = r * (5/9)
        let array = [r_C, r_F, r_K, r]
        return array
    }
}
