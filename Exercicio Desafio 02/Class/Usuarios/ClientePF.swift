//
//  ClientePF.swift
//  Exercicio Desafio 02
//
//  Created by Thiago B Claramunt on 06/05/19.
//  Copyright © 2019 Thiago B Claramunt. All rights reserved.
//

import Foundation

class ClientePF: Cliente {
    var sobrenome: String
    var rg: Int
    
    init(nome: String, sobrenome: String, rg: Int) {
        self.sobrenome = sobrenome
        self.rg = rg
        super.init(nome: nome)
    }
    
}
