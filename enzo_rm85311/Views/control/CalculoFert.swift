import Foundation

class CalculoFert {
    var nitrogenio : Float!
    var fosforo : Float!
    var potassio : Float!
    var quantidade : Float!
    
    // Construtor sem argumentos
    init() {
    }
    
    // Calcula a quantidade necessária de DAP para o nitrogênio e fósforo necessário
    func resultadoDAP() -> Float {
        let nitro_needed = nitrogenio / 0.18
        let fosf_needed = fosforo / 0.46
        return (nitro_needed + fosf_needed) / 2.0
    }
    
    // Calcula a quantidade necessária de U para o nitrogênio necessário
    func resultadoU() -> Float {
        let nitro_from_dap = resultadoDAP() * 0.18
        let nitro_needed = (nitrogenio - nitro_from_dap) / 0.46
        return nitro_needed
    }
    
    // Calcula a quantidade necessária de MOP para o potássio necessário
    func resultadoMOP() -> Float {
        return potassio / 0.60
    }
}
