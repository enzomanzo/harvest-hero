class CalculoSemeadura {
    var areaPlantada: Float!
    var espaçamentoEntreLinha: Float!
    var espaçamentoEntrePlanta: Float!
    var poderGerminativo: Float!
    var pesoMilSementes: Float!

    init(areaPlantada: Float, espaçamentoEntreLinha: Float, espaçamentoEntrePlanta: Float, poderGerminativo: Float, pesoMilSementes: Float) {
        self.areaPlantada = areaPlantada
        self.espaçamentoEntreLinha = espaçamentoEntreLinha
        self.espaçamentoEntrePlanta = espaçamentoEntrePlanta
        self.poderGerminativo = poderGerminativo
        self.pesoMilSementes = pesoMilSementes
    }

    func sementePara1Ha() -> Float {
        return 10000 / (espaçamentoEntreLinha * espaçamentoEntrePlanta)
    }

    func sementesPorHa() -> Float {
        return sementePara1Ha() / (poderGerminativo / 100)
    }

    func sementesPorMetroQuadrado() -> Float {
        return sementesPorHa() / 10000
    }

    func kgDeSementes() -> Float {
        return (sementesPorHa() * pesoMilSementes) / 1000
    }

    func kgPorHa() -> Float {
        return kgDeSementes() / areaPlantada
    }
}
