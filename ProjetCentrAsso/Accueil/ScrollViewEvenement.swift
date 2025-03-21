//
//  ScrollViewEvenement.swift
//  ProjetCentrAsso
//
//  Created by apprenant77 on 11/03/2025.
//

import SwiftUI

struct ScrollViewEvenement: View {
    var actuHorizontal = [
        "actuJeunes",
        "actuJuge",
        "actuSante"
    ]
    @State var showModal = false
    @State var actuSelectionnee: String? = nil
    var body: some View {
        Text("Évenements")
            .font(Font.system(size: 25))
            .bold()
            .padding(.leading)
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(actuHorizontal,id: \.self) { actu in
                    
                    Button(action: {
                        actuSelectionnee = actu
                    })
                    {
                        Image(actu)
                            .resizable()
                            .scaledToFit()
                            .scaledToFill()
                            .frame(width: 300, height: 150)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                }
                
            }
            
        }
        
        .sheet(isPresented: $showModal){
            if let actu = actuSelectionnee {
                ModalViewPosts(actu: actu, showModal: $showModal)
            }
        }
        .onChange(of: actuSelectionnee) { newValue in
            if newValue != nil {
                showModal = true
            }
        }
    }
}

#Preview {
    ScrollViewEvenement()
}
