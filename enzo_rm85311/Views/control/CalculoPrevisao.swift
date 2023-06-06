//
//  CalculoPrevisao.swift
//  enzo_rm85311
//
//  Created by Enzo Manzo Carelli on 04/06/23.
//

import Foundation

class CalculoPrevisao{
    var areaTotalPlantada : Float!
    var custoPrevistoPorHectare : Float!
    var sacasPrevistas : Float!
    var valorDaSacaNaVenda : Float!
    
    
    init(areaTotalPlantada: Float, custoPrevistoPorHectare: Float, sacasPrevistas: Float, valorDaSacaNaVenda: Float) {
        self.areaTotalPlantada = areaTotalPlantada
        self.custoPrevistoPorHectare = custoPrevistoPorHectare
        self.sacasPrevistas = sacasPrevistas
        self.valorDaSacaNaVenda = valorDaSacaNaVenda
    }

    func custoPorSaca() -> Float {
        return custoPrevistoPorHectare / sacasPrevistas
    }
    
    func lucroPorSaca() -> Float {
        return valorDaSacaNaVenda - custoPorSaca()
    }
    
    func custoPorHa() -> Float {
        return custoPrevistoPorHectare
    }
    
    func lucroPorHa() -> Float {
        return lucroPorSaca() * sacasPrevistas
    }
    
    func sacasGastasPorHa() -> Float {
        return sacasPrevistas / areaTotalPlantada
    }
    
    func custosTotais() -> Float {
        return custoPorHa() * areaTotalPlantada
    }
    
    func lucroTotal() -> Float {
        return lucroPorHa() * areaTotalPlantada
    }
    
    func saldoTotal() -> Float {
        return valorDaSacaNaVenda * sacasPrevistas - custosTotais()
    }
    
    
    
    
}
