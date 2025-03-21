//
//  PageCarte.swift
//  ProjetCentrAsso
//
//  Created by apprenant77 on 07/03/2025.
//

import SwiftUI
import MapKit

struct PageCarte: View {
    @State var selectedCategory: String = "Toutes"
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 50.6340, longitude: 3.0700),
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    )
    @State var selectedAssociation: MapAssociation? = nil
    @State var isDetailsViewExpanded: Bool = false
    
    var filteredMapAssociations: [MapAssociation] {
        if selectedCategory == "Toutes" {
            return mapAssociations
        } else {
            return mapAssociations.filter { $0.category == selectedCategory }
        }
    }
    
    var body: some View {
        VStack {
            // Barre de recherche et filtre
            VStack(spacing: 8) {
                TextField("Rechercher une association", text: .constant(""))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                
                Picker("Catégorie", selection: $selectedCategory) {
                    Text("Toutes").tag("Toutes")
                    Text("Santé").tag("Santé")
                    Text("Sociale").tag("Sociale")
                    Text("Éducative").tag("Éducative")
                    Text("Autre").tag("Autre")
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)
            }
            .padding(.top)
            
            // Carte avec annotations
            ZStack {
                Map(coordinateRegion: $region, annotationItems: filteredMapAssociations) { mapAssociation in
                    MapAnnotation(coordinate: mapAssociation.coordinate) {
                        VStack {
                            Image(systemName: "mappin.circle.fill")
                                .foregroundColor(.red)
                                .font(.title)
                                .onTapGesture {
                                    selectedAssociation = mapAssociation
                                    withAnimation {
                                        isDetailsViewExpanded = true
                                    }
                                }
                            Text(mapAssociation.name)
                                .font(.caption)
                                .background(Color.white.opacity(0.7))
                                .cornerRadius(4)
                        }
                    }
                }
                .edgesIgnoringSafeArea(.top)
                
                // Détails de l'association sélectionnée
                if isDetailsViewExpanded, let selectedAssociation = selectedAssociation {
                    VStack {
                        Spacer()
                        
                        VStack(spacing: 12) {
                            Text(selectedAssociation.name)
                                .font(.title2)
                                .fontWeight(.bold)
                            
                            Text(selectedAssociation.description)
                                .font(.body)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal)
                            
                            Text("Capacité : \(selectedAssociation.capacite)")
                                .font(.caption)
                                .foregroundColor(.gray)
                            
                            Button(action: {
                                withAnimation {
                                    isDetailsViewExpanded = false
                                }
                            }) {
                                Text("Fermer")
                                    .foregroundColor(.blue)
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(8)
                                    .shadow(radius: 2)
                            }
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(16)
                        .shadow(radius: 8)
                        .padding(.horizontal)
                        .transition(.move(edge: .bottom))
                    }
                }
            }
        }
    }
}


#Preview {
    PageCarte()
}
