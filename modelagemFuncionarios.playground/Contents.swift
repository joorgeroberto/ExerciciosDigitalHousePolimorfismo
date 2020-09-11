import UIKit

class Funcionario {
    private var nome: String
    private var salario: Float
    private var cpf: Double
    
    init(nome: String, salario: Float, cpf: Double) {
        self.nome = nome
        self.salario = salario
        self.cpf = cpf
    }
    
    func getSalario() -> Float {
        return(self.salario);
    }
    
    func getNome() -> String {
        return(self.nome);
    }
    
    func calcularBonus() {
        
    }
}


class Programador: Funcionario {
    private var plataformaDeTrabalho: String;
    
    init(nome: String, salario: Float, cpf: Double, plataformaDeTrabalho: String) {
        self.plataformaDeTrabalho = plataformaDeTrabalho;
        
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func calcularBonus() {
        print("O salário de \(getNome()) é: R$ \(getSalario()). \nSeu bônus anual como Programador é: R$ \(getSalario() * 0.20)\n")
    }
}

class Designer: Funcionario {
    private var ferramentaPreferida: String;
    
    init(nome: String, salario: Float, cpf: Double, ferramentaPreferida: String) {
        self.ferramentaPreferida = ferramentaPreferida;
        
        super.init(nome: nome, salario: salario, cpf: cpf)
        
    }
    override func calcularBonus() {
        print("O salário de \(getNome()) é: R$ \(getSalario()). \nSeu bônus anual como Designer é: R$ \(getSalario() * 0.15)\n")
    }
}

let programador = Programador(nome: "Narlei", salario: 10000, cpf: 12345678, plataformaDeTrabalho: "IOS")
let designer = Designer(nome: "Jorge", salario: 5000, cpf: 123123123, ferramentaPreferida: "AdobeXD")

programador.calcularBonus()
designer.calcularBonus()
