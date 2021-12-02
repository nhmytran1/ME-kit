//
//  ResumeInfo.swift
//  ME-kit (iOS)
//
//  Created by Apprenant 82 on 01/12/2021.
//

import SwiftUI

struct ResumeInfo: View {
    @State var donneeDebutActivite : String
    @State var donneeDomiciliation : String
    @State var donneeTypeActivite : String
    @State var donneeACCRE : Reponse
    @State var donneeActivitePrincipal : Reponse
    @State var donneeImpot : Reponse
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 3)
                .frame(width: 350, height: 240)
                .foregroundColor(Color("greenMEkit"))
            
            VStack(spacing: 5) {
                
                Text("Résumé d'information")
                    .underline()
                    .padding()
                VStack {
                    BlocInfos(title: "Début d'activité :", value: donneeDebutActivite)
                    BlocInfos(title: "Type d'activité :", value: donneeTypeActivite)
                    BlocInfos(title: "Domiciliation :", value: donneeDomiciliation)
                    BlocInfos(title: "ACCRE :", value: donneeACCRE.rawValue)
                    BlocInfos(title: "Activité principale :", value: donneeActivitePrincipal.rawValue)
                    BlocInfos(title: "Impôt libératoire :", value: donneeImpot.rawValue)
                }.padding(.leading, 20)
                    .padding(.trailing, 20)
            }
        }
    }
}



struct BlocInfos: View {
    
    var title:String
    var value:String
    
    var body: some View {
        HStack {
            Text(title)
            Spacer()
            Text(value)
        }.padding(.leading, 20)
            .padding(.trailing, 20)
    }
}


struct ResumeInfo_Previews: PreviewProvider {
    static var previews: some View {
        ResumeInfo(donneeDebutActivite: "XX.XX.XX", donneeDomiciliation: "Paris", donneeTypeActivite: "Prestation de service", donneeACCRE: .oui, donneeActivitePrincipal: .oui, donneeImpot: .oui)
    }
}


