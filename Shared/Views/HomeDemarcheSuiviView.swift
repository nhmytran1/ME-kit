//
//  HomeDemarcheSuiviView.swift
//  ME-kit (iOS)
//
//  Created by Apprenant 82 on 29/11/2021.
//

import SwiftUI

struct HomeDemarcheSuiviView: View {
    var body: some View {
        NavigationView {
            ZStack {
                //BARRE DE SUIVI LATERALE
                HStack {
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 3, height: 400)
                    Spacer()
                }
                .padding(.leading, 43.0)
                
                
                VStack (alignment: .leading) {
                    CercleGrisFait(text: "Création")
                    
                    titreTypeEtape(label: "MES DEMARCHES RECURRENTES")
                    
                    VStack (alignment: .leading) {
                        ForEach(etapesSuivi) { etape in
                            NavigationLink(destination: DetailEtapeView(etape: etape)) {
                                CercleVertAFaire(text: etape.name)
                            }
                        }
                    }
                    
                    titreTypeEtape(label: "TVA > XXXX €")

                    NavigationLink(destination: DetailEtapeView(etape: etapeTVA)) {
                        CercleGrisAFaire(text: etapeTVA.name)
                    }
                }
            }
            .navigationBarTitle(Text("Démarches"))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                    NavigationLink {
                        MesAlertesView()
                    } label: {
                        Image(systemName: "bell")
                    }
                    .foregroundColor(Color("greenMEkit"))
                }
            }
        }
    }
}


struct titreTypeEtape: View {
    let label: String
    var body: some View {
        ZStack {
            Rectangle()
                .stroke(.gray, lineWidth: 2.0)
                .frame(width: 270.0, height: 30.0, alignment: .center)
            Text(label)
                .foregroundColor(.gray)
                .padding()
        }
        .padding(.leading, 50.0)
        
    }
}


struct HomeDemarcheSuiviView_Previews: PreviewProvider {
    static var previews: some View {
        HomeDemarcheSuiviView()
    }
}
