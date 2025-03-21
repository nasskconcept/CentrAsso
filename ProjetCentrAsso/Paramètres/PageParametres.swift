//
//  PageParamètres.swift
//  ProjetCentrAsso
//
//  Created by apprenant77 on 12/03/2025.
//

import SwiftUI

struct PageParametres: View {
    @State var comptePrive = true
    @State var notificationsActives = true
    @State var themeSombre = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    Section {
                        // NavigationLink { (MDP)
                        HStack {
                            Text("Modifier le Mot de passe")
                            Spacer()
                            Image(systemName: "square.and.pencil")
                                .foregroundColor(.gray)
                        }
                    }
                    Section(header: Text("Confidentialité")) {
                        Toggle(isOn: $comptePrive) {
                            VStack(alignment: .leading) {
                                Text("Compte Privé")
                                Text("Quand votre compte est en public, votre profil est visible par tout le monde")
                                    .font(.footnote)
                                    .foregroundColor(.gray)
                            }
                        }
                        Toggle(isOn: $notificationsActives) {
                            Text("Notifications")
                        }
                        Toggle(isOn: $themeSombre) {
                            Text("Thème")
                        }
                    }
                }
                VStack {
                    Text("Mentions Légales")
                        .font(.footnote)
                        .padding(.vertical, 8)
                }
            }
            .navigationTitle("Paramètres")
        }
    }
}

#Preview {
    PageParametres()
}
