//
//  PublicationsProfil.swift
//  ProjetCentrAsso
//
//  Created by apprenant77 on 12/03/2025.
//

import SwiftUI

struct PublicationsProfil: View {
    var body: some View {
        VStack {
            HStack { Text("Posts")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(15)
                Spacer()
            }
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
}

#Preview {
    PublicationsProfil()
}
