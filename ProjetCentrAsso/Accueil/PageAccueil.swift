//
//  PageAccueil.swift
//  ProjetCentrAsso
//
//  Created by apprenant77 on 07/03/2025.
//

import SwiftUI

struct PageAccueil: View {
    @State var showModal = false
    @State var actuSelectionnee: String? = nil
    @State var showCamera = false
    @State var isImagePicked = false
    @State var pickedImage: UIImage? = nil
    @State var actuSheetPresented = false
    @State var showInitialisation = true
    
        
        var body: some View {
            if showInitialisation == true {
                PageInitialisation(showInitialisation: $showInitialisation)
            } else {
            NavigationStack{
                ScrollViewStories()
                    .padding(.leading)
                ScrollView(.vertical){
                    VStack(alignment: .leading){
                        ScrollViewEvenement()
                        ScrollViewPosts()
                    }
                    
                    
                }
                .padding(.leading)
                .navigationTitle("Centr'Asso")
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button(action: {
                            showCamera.toggle()
                        }) {
                            Image(systemName: "camera")
                                .foregroundColor(.blue)
                            .imageScale(.large) } } }
                .sheet(isPresented: $showCamera) {
                    CameraView(isImagePicked: $isImagePicked, pickedImage: $pickedImage)
                }
            }
            
        }
    }
}
#Preview {
    PageAccueil()
}
