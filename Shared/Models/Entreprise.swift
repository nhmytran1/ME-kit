//
//  Entreprise.swift
//  ME-kit (iOS)
//
//  Created by Apprenant 82 on 02/12/2021.
//

import Foundation

struct Entreprise {
    var nomination: String
    var donneeDebutActivite : String
    var donneeDomiciliation : String
    var donneeTypeActivite : String
    var donneeACCRE : Reponse
    var donneeActivitePrincipal : Reponse
    var donneeImpot : Reponse
    var etapeEnCours: [EtapeDemarche]
    var avancement: DemarcheCategorie
}


//source de données
var maBoiteDeOuf: Entreprise = Entreprise(nomination: "", donneeDebutActivite: "", donneeDomiciliation: "", donneeTypeActivite: "", donneeACCRE: .non, donneeActivitePrincipal: .non, donneeImpot: .non, etapeEnCours: [etape1], avancement: .creation)

enum Reponse : String, CaseIterable {
    case oui = "oui"
    case non = "non"
}
