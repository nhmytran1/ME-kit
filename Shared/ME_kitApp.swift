//
//  ME_kitApp.swift
//  Shared
//
//  Created by Apprenant 82 on 29/11/2021.
//

import SwiftUI

@main
struct ME_kitApp: App {
    //ONBOARDING AVEC CONDITIONS ETC
    // si Entreprise.avancement = creation alors HomeDemarcheCreationView
    // si Entreprise.avancement = suivi alors HomeDemarcheView
    // si Entreprise.avancement = cloture alors HomeDemarcheClotureView
    
    var body: some Scene {
        WindowGroup {
            TabBarView()
        }
    }
}
