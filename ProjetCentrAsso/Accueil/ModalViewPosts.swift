//
//  ModalViewPosts.swift
//  ProjetCentrAsso
//
//  Created by apprenant77 on 11/03/2025.
//

import SwiftUI

struct ModalViewPosts: View {
        var actu: String
        @Binding var showModal: Bool
        var descriActu = "Chez Ensemble & Accessibles, nous croyons en un monde où chaque personne, quelles que soient ses capacités, a sa place et peut s’épanouir pleinement. Notre mission ? Créer un espace inclusif où l'entraide, la solidarité et l'autonomie sont au cœur de nos actions. Tout le monde ! Que vous soyez concerné directement ou que vous souhaitiez simplement apporter votre aide, votre présence et votre engagement sont précieux."
        var body: some View {
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        showModal = false
                    }) {
                        Image(systemName: "xmark")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.gray)
                            .padding()
                    }
                }
                VStack(){
                    Text("Événement")
                        .font(.title)
                        .padding()
                    VStack(alignment: .leading){
                        
                        Image(actu)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 250)
                        Text(descriActu)
                            .font(Font.system(size: 18))
                            .bold()
                        HStack{
                            Image(systemName: "heart")
                                .padding(10)
                            Image(systemName: "message")
                                .padding(10)
                            Image(systemName: "paperplane")
                                .padding(10)
                                .rotationEffect(.degrees(10))
                        }
                        HStack{
                            ZStack(alignment: .bottomLeading){
                                Image("secondLike")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40)
                                    .clipShape(Circle())
                                Image("firstLike")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 35)
                                    .clipShape(Circle())
                                    .offset(x:-8,y:10)
                            }
                            Text("Céline et Mangeur2viand ont aimés votre poste")
                                .font(Font.system(size: 13))
                        }
                    }
                    
                    Spacer()
                }
                
            }
            .padding()
        }
    }
    
