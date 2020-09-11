import UIKit

class Veiculo {
    private var cor: String;
    private var preco: Float;
    private var quantidadeDePassageiros: Int;
    
    init(cor: String, preco: Float, quantidadeDePassageiros: Int) {
        self.cor = cor;
        self.preco = preco;
        self.quantidadeDePassageiros = quantidadeDePassageiros;
    }
    
    func getQuantidadeDePassageiros() -> Int {
        return(self.quantidadeDePassageiros)
    }
    
    func calcularQuantidadeDeCombustivel(_ distancia: Float) -> Float {
        return(distancia * Float(quantidadeDePassageiros))
    }
}

class Carro: Veiculo {
    private var tamanhoDasRodas: Int;
    
    init(cor: String, preco: Float, quantidadeDePassageiros: Int, tamanhoDasRodas: Int) {
        self.tamanhoDasRodas = tamanhoDasRodas;
        
        super.init(cor: cor, preco: preco, quantidadeDePassageiros: quantidadeDePassageiros)
    }
    
    override func calcularQuantidadeDeCombustivel(_ distancia: Float) -> Float {
        return(Float(self.tamanhoDasRodas) * distancia * Float(getQuantidadeDePassageiros()))
        //Ou, para aproveitar o calculo feito na classe pai, podemos fazer:
        //return(super.calcularQuantidadeDeCombustivel(distancia) * Float(self.tamanhoDasRodas))
    }
}

class Aviao: Veiculo {
    private var piloto: String;
    private var companhiaAerea: String;
    
    init(cor: String, preco: Float, quantidadeDePassageiros: Int, piloto: String, companhiaAerea: String) {
        self.piloto = piloto;
        self.companhiaAerea = companhiaAerea;
        
        super.init(cor: cor, preco: preco, quantidadeDePassageiros: quantidadeDePassageiros)
    }
    
    override func calcularQuantidadeDeCombustivel(_ distancia: Float) -> Float {
        return(distancia * Float(getQuantidadeDePassageiros()))
        //Ou, para aproveitar o calculo feito na classe pai, podemos fazer:
        //return(super.calcularQuantidadeDeCombustivel(distancia))
    }
}

let carro = Carro(cor: "Azul", preco: 28000, quantidadeDePassageiros: 4, tamanhoDasRodas: 28)
let aviao = Aviao(cor: "Branco", preco: 10000000, quantidadeDePassageiros: 500, piloto: "Jorge", companhiaAerea: "Gol")

carro.calcularQuantidadeDeCombustivel(150.5)
aviao.calcularQuantidadeDeCombustivel(2167)

