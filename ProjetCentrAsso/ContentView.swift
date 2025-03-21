//
//  ContentView.swift
//  ProjetCentrAsso
//
//  Created by apprenant77 on 07/03/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView {
                PageAccueil()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Accueil")
                    }
                
                PageMessagerie()
                    .tabItem {
                        Image(systemName: "message.fill")
                        Text("Messages")
                    }
                
                PageRecherche()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Rechercher")
                    }
                
                PageCarte()
                    .tabItem {
                        Image(systemName: "map.fill")
                        Text("Carte")
                    }
                
                PageProfil()
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Profil")
                    }
            }
        }
    }
}
#Preview {
    ContentView()
}
