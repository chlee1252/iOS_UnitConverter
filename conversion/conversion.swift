//
//  conversion.swift
//  ult_converter
//
//  Created by Marc Lee on 7/9/19.
//  Copyright © 2019 Marc Lee. All rights reserved.
//

import Foundation

class conversion {
    // Helper function to formatting
    func create_result(array: Array<Double>) -> Array<String> {
        var result = Array<String>()
        var roundedValue: Double = 0
        for i in 0...array.count-1 {
            roundedValue = round(array[i] * 1000000) / 1000000
            result.append(String(roundedValue) + " " + category[myindex].units[i])
        }
        return result
    }
    
    // Base Unit is km
    func getDistance(userinput: Double, pickerIndex: Int) -> Array<String>{
        var s =  [Double]()
        let distance = DistanceFormula()
        switch (pickerIndex) {
        case 0:
            s = distance.start_mm(userinput: userinput)
            break
            
        case 1:
            s = distance.start_cm(userinput: userinput)
            break
        case 2:
            s = distance.start_m(userinput: userinput)
            break
        case 3:
            s = distance.start_km(userinput: userinput)
            break
        case 4:
            s = distance.start_mile(userinput: userinput)
            break
        case 5:
            s = distance.start_ft(userinput: userinput)
            break
        case 6:
            s = distance.start_yd(userinput: userinput)
            break
        default:
            s = distance.start_in(userinput: userinput)
            break
        }
        return create_result(array: s)
    }
    
    //Base Unit is kg
    func getWeight(userinput: Double, pickerIndex: Int) -> Array<String> {
        var s = [Double]()
        let weight = WeightFormula()
        switch (pickerIndex) {
        case 0:
            s = weight.start_mg(userinput: userinput)
            break
        case 1:
            s = weight.start_g(userinput: userinput)
            break
        case 2:
            s = weight.start_kg(userinput: userinput)
            break
        case 3:
            s = weight.start_t(userinput: userinput)
            break
        case 4:
            s = weight.start_gr(userinput: userinput)
            break
        case 5:
            s = weight.start_oz(userinput: userinput)
            break
        default:
            s = weight.start_lb(userinput: userinput)
            break
        }
        
        return create_result(array: s)
    }
    
    // Base Unit m^2
    func getArea(userinput: Double, pickerIndex: Int) -> Array<String> {
        var s = [Double]()
        let area = AreaFormula()
        switch (pickerIndex) {
        case 0:
            s = area.start_meter(userinput: userinput)
            break
        case 1:
            s = area.start_ha(userinput: userinput)
            break
        case 2:
            s = area.start_km(userinput: userinput)
            break
        case 3:
            s = area.start_ft(userinput: userinput)
            break
        case 4:
            s = area.start_yd(userinput: userinput)
            break
        default:
            s = area.start_ac(userinput: userinput)
            break
        }
        return create_result(array: s)
    }
    
    //Base unit is Celcius
    func getTemp(input: Double, pickerIndex: Int) -> Array<String> {
        var s = [Double]()
        let temp = TempFormula()
        switch (pickerIndex) {
        case 0:
            s = temp.start_C(userinput: input)
            break
        case 1:
            s = temp.start_F(userinput: input)
            break
        case 2:
            s = temp.start_K(userinput: input)
            break
        default:
            s = temp.start_R(userinput: input)
            break
        }
        return create_result(array: s)
    }
    
}
