//
//  Cliente.swift
//  Exercicio Desafio 02
//
//  Created by Thiago B Claramunt on 06/05/19.
//  Copyright © 2019 Thiago B Claramunt. All rights reserved.
//

import Foundation

class Cliente {
    var nome: String
    var dataEntrada: Date = Date()

    init(nome: String) {
        self.nome = nome
    }
}
