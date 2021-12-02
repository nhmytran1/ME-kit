//
//  HomeDemarcheCreaView.swift
//  ME-kit (iOS)
//
//  Created by Apprenant 99 on 01/12/2021.
//

import SwiftUI

struct HomeDemarcheCreaView: View {
    
    var body: some View {
        HStack {
            Spacer()
            Spacer()
            NavigationView {
                VStack{
                    List(etapesCreation){
                        etape in
                        NavigationLink(destination: DetailEtapeView(etape: etape)) {
                            CercleVertPlay(text: etape.name)
                        }                }
                }
            }
            Spacer()
            Spacer()
            Spacer()
            Spacer()
        }
    }
}

struct HomeDemarcheCreaView_Previews: PreviewProvider {
    static var previews: some View {
        HomeDemarcheCreaView()
    }
}
