//
//  PageProfilUtilisateur.swift
//  ProjetCentrAsso
//
//  Created by apprenant77 on 12/03/2025.
//

import SwiftUI

struct PageProfilUtilisateur: View {
    var body: some View {
        VStack(spacing: 16) {
            Image("franckpdp")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 2))
            Text("Franck_02")
                .font(.title)
                .fontWeight(.bold)
            HStack(spacing: 40) {
                VStack {
                    Text("420")
                        .font(.headline)
                        .fontWeight(.bold)
                    Text("Abonnés")
                        .font(.subheadline)
                }
                VStack {
                    Text("530")
                        .font(.headline)
                        .fontWeight(.bold)
                    Text("Abonnements")
                        .font(.subheadline)
                }
            }
            Text("Je suis un chien\n To the moon🚀🌔")
                .font(.body)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
        }
    }
}
#Preview {
    PageProfilUtilisateur()
}
