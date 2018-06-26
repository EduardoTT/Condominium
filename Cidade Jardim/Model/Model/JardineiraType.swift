//
//  JardineiraType.swift
//  Cidade Jardim
//
//  Created by Eduardo Tolmasquim on 23/02/2018.
//  Copyright © 2018 Fullab. All rights reserved.
//

import Foundation

enum JardineiraType: String, Codable {
    case RioDesign_Orla_Metro
    case Orla_Metro
    case RioDesign_Balsa_CidadeJardim
    case Balsa_Orla_Metro
    case Balsa_Orla
    case RioDesign_Americas_Metro_Orla
    
    var references: [ReferencePlace] {
        switch self {
        case .RioDesign_Orla_Metro:
            return [.RioDesign, .Orla, .Metro]
        case .Orla_Metro:
            return [.Orla, .Metro]
        case .RioDesign_Balsa_CidadeJardim:
            return [.RioDesign, .Balsa, .CidadeJardim]
        case .Balsa_Orla_Metro:
            return [.Balsa, .Orla, .Metro]
        case .Balsa_Orla:
            return [.Balsa, .Orla]
        case .RioDesign_Americas_Metro_Orla:
            return [.RioDesign, .Americas, .Metro, .Orla]
        }
    }
    
    enum ReferencePlace:String {
        case RioDesign = "Rio Design"
        case Orla
        case Metro
        case Balsa
        case CidadeJardim = "Cidade Jardim"
        case Americas
    }
}
