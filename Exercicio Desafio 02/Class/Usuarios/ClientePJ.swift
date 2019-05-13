//
//  ClientePJ.swift
//  Exercicio Desafio 02
//
//  Created by Thiago B Claramunt on 06/05/19.
//  Copyright © 2019 Thiago B Claramunt. All rights reserved.
//

import Foundation

class ClientePJ: Cliente {
    var cnpj: Int
    
    init(cnpj: Int, nome: String ) {
        
        self.cnpj = cnpj
        super.init(nome: nome)
    }
}
