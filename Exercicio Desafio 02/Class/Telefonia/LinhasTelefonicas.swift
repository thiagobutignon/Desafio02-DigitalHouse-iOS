//
//  LinhasTelefonicas.swift
//  Exercicio Desafio 02
//
//  Created by Thiago B Claramunt on 06/05/19.
//  Copyright © 2019 Thiago B Claramunt. All rights reserved.
//

import Foundation


class LinhaTelefonica {
    var cliente: Cliente
    var numeroTelefone: Int = Int(arc4random_uniform(999999999)) + 7000000000
    var plano: Plano
    var listaDeLigacao: [[String: Any]] = []
    
    init(cliente: Cliente, plano: Plano) {
        self.cliente = cliente
        self.plano = plano
    }
    
    func ligacao(ligador: Int,_ recebedor: Int = Int(arc4random_uniform(999999999)) + 7000000000, plano: PlanoContratado ) -> [[String: Any]] {
        let date: Date = Date()
        let quantidadeDeMinutos: Int = Int(arc4random_uniform(60)) + 1
        let valor = Plano.valorACobrar(plano: plano, quantidadeDeMinutos: quantidadeDeMinutos)
        listaDeLigacao.append(
            ["date": date,
            "quantidadeDeMinutos": quantidadeDeMinutos,
            "numeroDeTelefone": ligador,
            "recebedor": recebedor,
            "valor": valor
            ])
        return listaDeLigacao
    }
}
