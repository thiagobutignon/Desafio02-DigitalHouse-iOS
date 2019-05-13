//
//  main.swift
//  Exercicio Desafio 02
//
//  Created by Thiago B Claramunt on 06/05/19.
//  Copyright © 2019 Thiago B Claramunt. All rights reserved.
//

import Foundation

var pj: ClientePJ = ClientePJ(cnpj: 132, nome: "Thiago")
var pf: ClientePF = ClientePF(nome: "Bruno", sobrenome: "Barreira", rg: 123)


var linha1: LinhaTelefonica = LinhaTelefonica(cliente: pj, plano: .init(plano: .comunidadeEI))
var linha2: LinhaTelefonica = LinhaTelefonica(cliente: pf, plano: .init(plano: .eiOne))
linha1.ligacao(ligador: linha2.numeroTelefone, linha1.numeroTelefone, plano: linha2.plano.plano)
dump(linha1.listaDeLigacao)
