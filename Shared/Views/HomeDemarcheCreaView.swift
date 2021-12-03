//
//  HomeDemarcheCreaView.swift
//  ME-kit (iOS)
//
//  Created by Apprenant 99 on 01/12/2021.
//

import SwiftUI

struct HomeDemarcheCreaView: View {
    
    var body: some View {
        ZStack {
            HStack {
                Rectangle()
                    .fill(.gray)
                    .frame(width: 3, height: 400)
                Spacer()
            }
            .padding(.leading, 43.0)
            
            
            
        }
        
        
        
        
        
//        NavigationView {
//            VStack{
//                List(etapesCreation){
//                    etape in
//                    NavigationLink(destination: DetailEtapeView(etape: etape)) {
//                        CercleVertPlay(text: etape.name)
//                    }                }
//            }
//        }
    }
}

struct HomeDemarcheCreaView_Previews: PreviewProvider {
    static var previews: some View {
        HomeDemarcheCreaView()
    }
}
