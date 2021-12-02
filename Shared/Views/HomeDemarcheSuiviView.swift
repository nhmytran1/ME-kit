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
                Rectangle()
                    .fill(.gray)
                    .frame(width: 3, height: 600)
                    .position(x: 40.0, y: 350.0)
                
                VStack {
                    CercleGrisFait(text: "Création")
                        .position(x: 85.0)
                    
                    titreTypeEtape(label: "MES DEMARCHES RECURRENTES")
                        .position(x: 210.0)
                    
                    VStack (alignment: .leading) {
                        ForEach(etapesSuivi) { etape in
                            NavigationLink(destination: DetailEtapeView(etape: etape)) {
                                CercleVertAFaire(text: etape.name)
                            }
                        }
                    }
                    .position(x: 140.0)
                    
                    titreTypeEtape(label: "TVA > XXXX €")
                        .position(x: 210.0)
                    
                    NavigationLink(destination: DetailEtapeView(etape: etapeTVA)) {
                        CercleGrisAFaire(text: etapeTVA.name)
                    }.position(x: 120.0)
                    
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
                .frame(width: 300.0, height: 30.0, alignment: .center)
            Text(label)
                .foregroundColor(.gray)
                .padding()
        }
        
    }
}


struct HomeDemarcheSuiviView_Previews: PreviewProvider {
    static var previews: some View {
        HomeDemarcheSuiviView()
    }
}
