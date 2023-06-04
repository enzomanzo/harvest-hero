//
//  CalculoFert.swift
//  NavigationTabEasy
//
//  Created by Enzo Manzo Carelli on 03/06/23.
//

import Foundation

class CalculoFert {
    var nitrogenio : Float!
    var fosforo : Float!
    var potassio : Float!
    var quantidade : Float!
    var DAP : Float!
    var U : Float!
    var MOP : Float!
    
    
    func resultadoDAP() -> Float {
        DAP = nitrogenio + fosforo
        return DAP
    }

    func resultadoU() -> Float {
        U = (fosforo * 2) + potassio
        return U
    }

    func resultadoMOP() -> Float {
        MOP = (nitrogenio * 4) + (fosforo - potassio)
        return MOP
    }
    
    init(nitrogenio: Float!, fosforo: Float!, potassio: Float!, quantidade: Float!, DAP: Float!, U: Float!, MOP: Float!) {
        self.nitrogenio = nitrogenio
        self.fosforo = fosforo
        self.potassio = potassio
        self.quantidade = quantidade
        self.DAP = DAP
        self.U = U
        self.MOP = MOP
    }
    
    init(){
        
    }
}
