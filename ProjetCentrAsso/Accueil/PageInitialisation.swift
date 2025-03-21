//
//  PageInitialisation.swift
//  ProjetCentrAsso
//
//  Created by apprenant77 on 12/03/2025.
//

import SwiftUI

struct PageInitialisation: View {
    @Binding var showInitialisation: Bool
    var body: some View {
        ScrollView {
                    VStack {

                        HStack {
                            Text("Initialisation")
                                .font(.title)
                                .bold()
                                .padding(.leading, 0)
                        }
                        Spacer()
                        /*HStack {
                            Button {
                                showInitialisation.toggle()
                                UserDefaults.standard.set(false, forKey: "showInitialisation")
                            } label: {
                                Text("Passer")
                                    .foregroundColor(Color(red: 65/255, green: 223/255, blue: 141/255))


                                    .padding(.leading, 260 )
                            }
                        }*/
                        Spacer()
                            .frame(width:10)
                        Text("Sélectionnez les centres d'intérêts dont\nvous vous sentez proches.")
                            .multilineTextAlignment(.center)
                        Spacer()
                            //.frame(height: 500)
                        Text("Santé")
                            .font(.title)
                            .bold()
                            .padding(.trailing, 300)
                        ScrollView (.horizontal, showsIndicators: false) {

                            HStack (spacing: 15) {

                                ForEach(santé){ Santés in
                                    Image(Santés.image)
                                        .resizable()
                                        .scaledToFit()
                                        .scaledToFill()
                                        .frame(width: 300, height: 150)
                                        .cornerRadius(15)

                                }
                            }
                        }
        Text("Environnement")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.trailing, 170)
                        ScrollView (.horizontal, showsIndicators: false){
                            HStack (spacing: 15) {
                                ForEach(environnement){ envir in
                                    Image(envir.image)
                                        .resizable()
                                        .scaledToFit()
                                        .scaledToFill()
                                        .frame(width: 300, height: 150)
                                        .cornerRadius(15)
                                }
                            }
                        }
                            Text("Juridique")
                                .font(.title)
                                .fontWeight(.bold)
                                .padding(.trailing, 250)
                        ScrollView (.horizontal, showsIndicators: false){
                            HStack (spacing: 15) {
                                ForEach(juridique){ story in
                                    Image(story.image)
                                        .resizable()
                                        .scaledToFit()
                                        .scaledToFill()
                                        .frame(width: 300, height: 150)
                                        .cornerRadius(15)
                                }
                            }
                        }
                            Button {
                                showInitialisation.toggle()
                                UserDefaults.standard.set(false, forKey: "showInitialisation")
                            } label: {                Text("Valider")
                                    .foregroundColor(.white)
                                    .bold()
                                    .frame(width: 350, height: 60)
                                    .background(.blue)
                                    .cornerRadius(15)
                            
                            }
                    }
                }
        .padding(.leading)
        .toolbar(.hidden, for: .tabBar)
            }
        }

#Preview {
    PageInitialisation(showInitialisation: .constant(true))
}

