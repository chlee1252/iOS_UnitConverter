//
//  SpeedFormula.swift
//  ult_converter
//
//  Created by Marc Lee on 9/14/19.
//  Copyright © 2019 Marc Lee. All rights reserved.
//

import Foundation

class SpeedFormula {
    func start_ms(userinput: Double) -> [Double] {
        /*
         1. m/s -> m/s
         2. m/s -> m/h
         3. m/s -> km/s
         4. m/s -> km/h
         5. m/s -> in/s
         6. m/s -> in/h
         7. m/s -> ft/s
         8. m/s -> ft/h
         9. m/s -> mi/s
         10. m/s -> mi/h
         11. m/s -> kn
         12. m/s -> mach
         */
        let ms = userinput
        let mstomh = ms * 3600
        let mstokms = ms / 1000
        let mstokmh = ms * 3.6
        let mstoins = ms * 39.37
        let mstoinh = ms * 141732.283
        let mstofts = ms * 3.281
        let mstofth = ms * 11811.024
        let mstomis = ms / 1609.344
        let mstomih = ms * 2.237
        let mstokn = ms * 1.944
        let mstomach = ms * 344
        
        let result = [ms, mstomh, mstokms, mstokmh, mstoins,mstoinh, mstofts, mstofth,mstomis, mstomih, mstokn, mstomach]
        return result
    }
    
    func start_mh(userinput: Double) -> [Double] {
        let mh = userinput
        let mhtoms = mh / 3600
        let mhtokms = mh / 3.6e+6
        let mhtokmh = mh / 1000
        let mhtoins = mh
        let mhtoinh = mh
        let mhtofts = mh
        let mhtofth = mh
        let mhtomis = mh
        let mhtomih = mh
        let mhtokn = mh
        let mhtomach = mh
        let result = [mhtoms, mh, mhtokms, mhtokmh, mhtoins, mhtoinh, mhtofts, mhtofth, mhtomis, mhtomih, mhtokn, mhtomach]
        
        return result
    }
    
    func start_kms(userinput: Double) -> [Double] {
        let kms = userinput
        let kmstoms = kms / 3600
        let kmstomh = kms / 3.6e+6
        let kmstokmh = kms / 1000
        let kmstoins = kms
        let kmstoinh = kms
        let kmstofts = kms
        let kmstofth = kms
        let kmstomis = kms
        let kmstomih = kms
        let kmstokn = kms
        let kmstomach = kms
        let result = [kmstoms, kmstomh, kms, kmstokmh, kmstoins, kmstoinh, kmstofts, kmstofth, kmstomis, kmstomih, kmstokn, kmstomach]
        
        return result
    }
    
    func start_kmh(userinput: Double) -> [Double] {
        let kmh = userinput
        let kmhtoms = kmh / 3600
        let kmhtomh = kmh / 3.6e+6
        let kmhtokms = kmh / 1000
        let kmhtoins = kmh
        let kmhtoinh = kmh
        let kmhtofts = kmh
        let kmhtofth = kmh
        let kmhtomis = kmh
        let kmhtomih = kmh
        let kmhtokn = kmh
        let kmhtomach = kmh
        let result = [kmhtoms, kmhtomh, kmhtokms, kmh, kmhtoins, kmhtoinh, kmhtofts, kmhtofth, kmhtomis, kmhtomih, kmhtokn, kmhtomach]
        
        return result
    }
    
    func start_ins(userinput: Double) -> [Double] {
        let ins = userinput
        let instoms = ins / 3600
        let instomh = ins / 3.6e+6
        let instokms = ins / 1000
        let instokmh = ins
        let instoinh = ins
        let instofts = ins
        let instofth = ins
        let instomis = ins
        let instomih = ins
        let instokn = ins
        let instomach = ins
        let result = [instoms, instomh, instokms, instokmh, ins, instoinh, instofts, instofth, instomis, instomih, instokn, instomach]
        
        return result
    }
    
    func start_inh(userinput: Double) -> [Double] {
        let inh = userinput
        let inhtoms = inh / 3600
        let inhtomh = inh / 3.6e+6
        let inhtokms = inh / 1000
        let inhtokmh = inh
        let inhtoins = inh
        let inhtofts = inh
        let inhtofth = inh
        let inhtomis = inh
        let inhtomih = inh
        let inhtokn = inh
        let inhtomach = inh
        let result = [inhtoms, inhtomh, inhtokms, inhtokmh, inhtoins, inh, inhtofts, inhtofth, inhtomis, inhtomih, inhtokn, inhtomach]
        
        return result
    }
    
    func start_fts(userinput: Double) -> [Double] {
        let fts = userinput
        let ftstoms = fts / 3600
        let ftstomh = fts / 3.6e+6
        let ftstokms = fts / 1000
        let ftstokmh = fts
        let ftstoinh = fts
        let ftstoins = fts
        let ftstofth = fts
        let ftstomis = fts
        let ftstomih = fts
        let ftstokn = fts
        let ftstomach = fts
        let result = [ftstoms, ftstomh, ftstokms, ftstokmh, ftstoins, ftstoinh, fts, ftstofth, ftstomis, ftstomih, ftstokn, ftstomach]
        
        return result
    }
    
    func start_fth(userinput: Double) -> [Double] {
        let fth = userinput
        let fthtoms = fth / 3600
        let fthtomh = fth / 3.6e+6
        let fthtokms = fth / 1000
        let fthtokmh = fth
        let fthtoinh = fth
        let fthtoins = fth
        let fthtofts = fth
        let fthtomis = fth
        let fthtomih = fth
        let fthtokn = fth
        let fthtomach = fth
        let result = [fthtoms, fthtomh, fthtokms, fthtokmh, fthtoins, fthtoinh, fthtofts, fth, fthtomis, fthtomih, fthtokn, fthtomach]
        
        return result
    }
    
    func start_mis(userinput: Double) -> [Double] {
        let mis = userinput
        let mistoms = mis / 3600
        let mistomh = mis / 3.6e+6
        let mistokms = mis / 1000
        let mistokmh = mis
        let mistoinh = mis
        let mistoins = mis
        let mistofts = mis
        let mistofth = mis
        let mistomih = mis
        let mistokn = mis
        let mistomach = mis
        let result = [mistoms, mistomh, mistokms, mistokmh, mistoins, mistoinh, mistofts, mistofth, mis, mistomih, mistokn, mistomach]
        
        return result
    }
    
    func start_mih(userinput: Double) -> [Double] {
        let mih = userinput
        let mihtoms = mih / 3600
        let mihtomh = mih / 3.6e+6
        let mihtokms = mih / 1000
        let mihtokmh = mih
        let mihtoinh = mih
        let mihtoins = mih
        let mihtofts = mih
        let mihtofth = mih
        let mihtomis = mih
        let mihtokn = mih
        let mihtomach = mih
        let result = [mihtoms, mihtomh, mihtokms, mihtokmh, mihtoins, mihtoinh, mihtofts, mihtofth, mihtomis, mih, mihtokn, mihtomach]
        
        return result
    }
    
    func start_kn(userinput: Double) -> [Double] {
        let kn = userinput
        let kntoms = kn / 3600
        let kntomh = kn / 3.6e+6
        let kntokms = kn / 1000
        let kntokmh = kn
        let kntoinh = kn
        let kntoins = kn
        let kntofts = kn
        let kntofth = kn
        let kntomis = kn
        let kntomih = kn
        let kntomach = kn
        let result = [kntoms, kntomh, kntokms, kntokmh, kntoins, kntoinh, kntofts, kntofth, kntomis, kntomih, kn, kntomach]
        
        return result
    }
    
    func start_mach(userinput: Double) -> [Double] {
        let mach = userinput
        let machtoms = mach / 3600
        let machtomh = mach / 3.6e+6
        let machtokms = mach / 1000
        let machtokmh = mach
        let machtoinh = mach
        let machtoins = mach
        let machtofts = mach
        let machtofth = mach
        let machtomis = mach
        let machtomih = mach
        let machtokn = mach
        let result = [machtoms, machtomh, machtokms, machtokmh, machtoins, machtoinh, machtofts, machtofth, machtomis, machtomih, machtokn, mach]
        
        return result
    }
}
