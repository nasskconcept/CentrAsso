//
//  ScrollViewPosts.swift
//  ProjetCentrAsso
//
//  Created by apprenant77 on 11/03/2025.
//

import SwiftUI

struct ScrollViewPosts: View {
    var filActuHorizontal = [
        "bienEtreAnimal",
        "metierHumanitaire",
        "aideHumanitaire"
    ]
    @State var showModal = false
    @State var actuSelectionnee: String? = nil
    var body: some View {
        Text("Posts")
            .font(Font.system(size: 25))
            .bold()
            .padding(.leading)
        ForEach(filActuHorizontal,id: \.self) { actus in
            VStack(alignment: .leading){
                Image(actus)
                    .resizable()
                    .frame(width: 380,height: 290)
                    .padding(2)
                    .cornerRadius(25)
                HStack{
                    Image(systemName: "heart")
                        .padding(10)
                    Image(systemName: "message")
                        .padding(10)
                    Image(systemName: "paperplane")
                        .padding(10)
                        .rotationEffect(.degrees(10))
                }
            }
        }
    }
    
}



#Preview {
    ScrollViewPosts()
}
