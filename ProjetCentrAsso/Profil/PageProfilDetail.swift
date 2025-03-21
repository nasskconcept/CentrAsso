//
//  PageProfilDetail.swift
//  ProjetCentrAsso
//
//  Created by apprenant77 on 11/03/2025.
//

import SwiftUI

struct PageProfilDetail: View {
    var association: Association
        var body: some View {
            ScrollView {
                VStack(spacing: 16) {
                    Image(association.pdp)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                 
                    Text(association.name)
                        .font(.title)
                        .fontWeight(.bold)
                    
            
                    HStack(spacing: 40) {
                        VStack {
                            Text("\(Int.random(in: 100...1000))")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Abonnés")
                                .font(.subheadline)
                        }
                        VStack {
                            Text("\(Int.random(in: 100...1000))")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Abonnements")
                                .font(.subheadline)
                        }
                    }
                    
                    Text("Description du profil de \(association.name)\n🚀")
                        .font(.body)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20)
                    
                    
                    ForEach(ListPublication, id: \.self) { imageName in
                        VStack {
                            Image(imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 350, height: 200)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                                HStack {
                                    Button(action: {
                                        print("J'aime cliqué")
                                    }) {
                                        Image(systemName: "heart")
                                            .foregroundColor(.red)
                                            .padding(.leading)
                                    }
                                    
                                    Button(action: {
                                        print("Commentaire cliqué")
                                    }) {
                                        Image(systemName: "message")
                                            .foregroundColor(.gray)
                                            .padding(.trailing)
                                    }
                                    Spacer()
                                }
                                .padding(.top, 8)
                            }
                            .padding(.horizontal)
                        }
                    }
                    .padding(.top, 20)
                }
                .padding()
            }
    }

#Preview {
    PageProfilDetail(association: associations[0])
}
