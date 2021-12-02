//
//  HomeMonEntrepriseView.swift
//  ME-kit (iOS)
//
//  Created by Apprenant 82 on 29/11/2021.
//

import SwiftUI

struct HomeMonEntrepriseView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Text("Ecran d'accueil Mon entreprise (Cynthia)")
            }
            .navigationBarTitle(Text("Mon entreprise"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct HomeMonEntrepriseView_Previews: PreviewProvider {
    static var previews: some View {
        HomeMonEntrepriseView()
    }
}
