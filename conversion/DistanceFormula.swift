//
//  DistanceFormula.swift
//  ult_converter
//
//  Created by Marc Lee on 9/14/19.
//  Copyright © 2019 Marc Lee. All rights reserved.
//

import Foundation

class DistanceFormula {

    func start_km(userinput: Double) -> Array<Double> {
        /*
         1. km -> mm
         2. km -> cm
         3. km -> m
         4. km -> km
         5. km -> mile
         6. km -> feet
         7. km -> yard
         8. km -> inch
         */
        let km = userinput
        let kmtomm = km * 1000000
        let kmtocm = km * 100000
        let kmtom = km * 1000
        let kmtomi = km / 1.609
        let kmtoft = km * 3280.34
        let kmtoyd = km * 1093.613
        let kmtoin = km * 39370.079
        let array = [kmtomm, kmtocm, kmtom, km, kmtomi, kmtoft, kmtoyd, kmtoin]
        return array
    }
    
    func start_mm(userinput: Double) -> Array<Double> {
        let mm = userinput
        let mmtocm = mm / 10
        let mmtom = mm / 1000
        let mmtokm = mm / 1e+6
        let mmtomi = mm / 1.609e+6
        let mmtoft = mm / 304.8
        let mmtoyd = mm / 914.4
        let mmtoinch = mm / 25.4
        let array = [mm, mmtocm, mmtom, mmtokm, mmtomi, mmtoft, mmtoyd, mmtoinch]
        return array
    }
    
    func start_cm(userinput: Double) -> Array<Double> {
        let cm = userinput
        let cmtomm = cm * 10
        let cmtoft = cm * 0.032808
        let cmtom = cm / 100
        let cmtoin = cm * 0.39370
        let cmtoyd = cm * 0.010936
        let cmtokm = cm / 100000
        let cmtomi = cm * 0.0000062137
        let array = [cmtomm, cm, cmtom, cmtokm, cmtomi, cmtoft, cmtoyd, cmtoin]
        return array
    }
    
    func start_m(userinput: Double) -> Array<Double> {
        let m = userinput
        let mtomm = m * 1000
        let mtocm = m / 0.01
        let mtokm = m / 1000
        let mtoft = m * 3.2808
        let mtoin = m * 39.370
        let mtoyd = m * 1.0936
        let mtomi = m * 0.00062137
        let array = [mtomm, mtocm, m, mtokm, mtomi, mtoft, mtoyd, mtoin]
        return array
    }
    
    func start_mile(userinput: Double) -> Array<Double> {
//        var result = Array<Double>()
        let mi = userinput
        let mitomm = mi / 0.00000062137
        let mitocm = mi / 0.0000062137
        let mitom = mi / 0.00062137
        let mitokm = mi / 0.62137
        let mitoft = mi * 5280
        let mitoin = mi * 63360
        let mitoyd = mi * 1760
        let array = [mitomm, mitocm, mitom, mitokm, mi, mitoft, mitoyd, mitoin]
        return array
    }
    
    func start_ft(userinput: Double) -> Array<Double> {
        let ft = userinput
        let fttomm = ft / 0.0032808
        let fttocm = ft / 0.032808
        let fttom = ft / 3.2808
        let fttokm = ft / 3280.8
        let fttoin = ft * 12
        let fttoyd = ft * 0.33333
        let fttomi = ft * 0.00018939
        let array = [fttomm, fttocm, fttom, fttokm, fttomi, ft, fttoyd, fttoin]
        return array
    }
    
    func start_yd(userinput: Double) -> Array<Double> {
        let yd = userinput
        let ydtomm = yd / 0.0010936
        let ydtocm = yd / 0.010936
        let ydtom = yd / 1.0936
        let ydtokm = yd / 1093.6
        let ydtoft = yd * 3
        let ydtoin = yd * 36
        let ydtomi = yd * 0.00056818
        let array = [ydtomm, ydtocm, ydtom, ydtokm, ydtomi, ydtoft, yd, ydtoin]
        return array
    }
    
    func start_in(userinput: Double) -> Array<Double> {
        let inch = userinput
        let intomm = inch / 0.039370
        let intocm = inch / 0.39370
        let intom = inch / 39.370
        let intokm = inch / 39370
        let intomi = inch * 0.000015783
        let intoft = inch * 0.083333
        let intoyd = inch * 0.027778
        let array = [intomm, intocm, intom, intokm, intomi, intoft, intoyd, inch]
        return array
    }
}
