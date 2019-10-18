//
//  WeightFormula.swift
//  ult_converter
//
//  Created by Marc Lee on 9/14/19.
//  Copyright © 2019 Marc Lee. All rights reserved.
//

import Foundation

class WeightFormula {
    func start_kg(userinput: Double) -> Array<Double> {
        /*
         1. kg -> mg
         2. kg -> g
         3. kg -> kg
         4. kg -> t
         5. kg -> gr
         6. kg -> oz
         7. kg -> lb
         */
        let kg = userinput
        let kgtomg = kg * 1e+6
        let kgtog = kg * 1000
        let kgtot = kg / 907.185
        let kgtogr = kg * 15432.358
        let kgtooz = kg * 35.274
        let kgtolb = kg * 2.205
        let array = [kgtomg, kgtog, kg, kgtot, kgtogr, kgtooz, kgtolb]
        return array
    }
    
    func start_mg(userinput: Double) -> Array<Double> {
        let mg = userinput
        let mgtog = mg / 1000
        let mgtokg = mg / 1e+6
        let mgtot = mg / 1e+9
        let mgtogr = mg / 64.799
        let mgtooz = mg / 28349.523
        let mgtolb = mg / 453592.37
        let array = [mg, mgtog, mgtokg, mgtot, mgtogr, mgtooz, mgtolb]
        return array
    }
    
    func start_g(userinput: Double) -> Array<Double> {
        let g = userinput
        let gtomg = g * 1000
        let gtokg = g / 1000
        let gtot = g / 1e+6
        let gtogr = g * 15.432
        let gtooz = g / 28.35
        let gtolb = g / 453.592
        let array = [gtomg, g, gtokg, gtot, gtogr, gtooz, gtolb]
        return array
    }
    
    func start_t(userinput: Double) -> Array<Double> {
        let t = userinput
        let ttomg = t * 1e+9
        let ttog = t * 1e+6
        let ttokg = t * 1000
        let ttogr = t * 1.543e+7
        let ttooz = t * 35273.962
        let ttolb = t * 2204.623
        let array = [ttomg, ttog, ttokg, t, ttogr, ttooz, ttolb]
        return array
    }
    
    func start_gr(userinput: Double) -> Array<Double> {
        let gr = userinput
        let grtomg = gr * 64.799
        let grtog = gr / 15.432
        let grtokg = gr / 15432.358
        let grtot = gr / 1.4e+7
        let grtooz = gr / 437.5
        let grtolb = gr / 7000
        let array = [grtomg, grtog, grtokg, grtot, gr, grtooz, grtolb]
        return array
    }
    
    func start_oz(userinput: Double) -> Array<Double> {
        let oz = userinput
        let oztomg = oz * 28349.523
        let oztog = oz * 28.35
        let oztokg = oz / 35.274
        let oztot = oz / 32000
        let oztogr = oz * 437.5
        let oztolb = oz / 16
        let array = [oztomg, oztog, oztokg, oztot, oztogr, oz, oztolb]
        return array
    }
    
    func start_lb(userinput: Double) -> Array<Double> {
        let lb = userinput
        let lbtomg = lb * 453592.37
        let lbtog = lb * 453.592
        let lbtokg = lb / 2.205
        let lbtot = lb / 2000
        let lbtogr = lb * 7000
        let lbtooz = lb * 16
        let array = [lbtomg, lbtog, lbtokg, lbtot, lbtogr, lbtooz, lb]
        return array
    }
}
