//
//  PageProfil.swift
//  ProjetCentrAsso
//
//  Created by apprenant77 on 07/03/2025.
//

import SwiftUI

struct PageProfil: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                PageProfilUtilisateur()
                ScrollViewSuggestions()
                PublicationsProfil()
            }
            .padding()
            .navigationTitle("Page Profil")
            .toolbar {
                ToolbarItem {
                    NavigationLink(destination: PageParametres()) {
                        Image(systemName:"gearshape")
                            .font(.body)
                    } } }
        }
    }
}
#Preview {
    PageProfil()
}
