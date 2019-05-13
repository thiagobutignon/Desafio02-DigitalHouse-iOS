//
//  Plano.swift
//  Exercicio Desafio 02
//
//  Created by Thiago B Claramunt on 06/05/19.
//  Copyright © 2019 Thiago B Claramunt. All rights reserved.
//

import Foundation
protocol Valor {
    static func valorACobrar(plano: PlanoContratado, quantidadeDeMinutos: Int) -> Float
}

enum PlanoContratado {
    case comunidadeEI, eiTwo, eiOne
    
}

class Plano: Valor {
    
    var plano: PlanoContratado
    
    init(plano: PlanoContratado) {
        self.plano = plano
    }
    
    static func valorACobrar(plano: PlanoContratado, quantidadeDeMinutos: Int) -> Float {
        switch plano {
        case .comunidadeEI:
            let custoDaLigacao: Float = 0.5
            return custoDaLigacao * Float(quantidadeDeMinutos)
        case .eiTwo:
            let custoDaLigacao: Float = 0.3
            return custoDaLigacao * Float(quantidadeDeMinutos)
        case .eiOne:
            return 99.99
        }
    }
    
}
