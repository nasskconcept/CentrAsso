//
//  PageRecherche.swift
//  ProjetCentrAsso
//
//  Created by apprenant77 on 07/03/2025.
//

import SwiftUI

struct PageRecherche: View {
    @State var searchText = ""
    @State var listeAssoRecherche: [Association] = associations
    var filteredAssociations: [Association] {
        if searchText.isEmpty {
            return listeAssoRecherche
        } else {
            return listeAssoRecherche.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
            }
        }
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 425, height: 1500)
                        List(filteredAssociations) { association in
                            NavigationLink(destination: PageProfilDetail(association: association)) {
                                Image(association.pdp)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 80, height: 80)
                                    .clipShape(Circle())
                                    .shadow(radius: 5)
                                Spacer()
                                Text(association.name)
                            }
                        }
                    }
                .searchable(text: $searchText, prompt: "Rechercher une association")
                .navigationTitle("Recherche")
            }
        }
    }
}

#Preview {
    PageRecherche()
}
