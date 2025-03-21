//
//  ScrollViewStories.swift
//  ProjetCentrAsso
//
//  Created by apprenant77 on 11/03/2025.
//

import SwiftUI

struct ScrollViewStories: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading){
                
                Text("Stories")
                    .font(Font.system(size: 25))
                    .bold()
                    .padding(.leading)
                
                ScrollView(.horizontal, showsIndicators: false){
                    
                    HStack{
                        ForEach(stories) { sto in
                            
                            NavigationLink {
                                StoryDetails(story: sto)
                            } label: {
                                ZStack{
                                    Circle()
                                        .scaledToFit()
                                        .frame(width: 78)
                                        .overlay( GradientView()
                                        .clipShape(Circle()))
                                    Image(sto.pdp)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 70)
                                        .clipShape(Circle())
                                }
                                .shadow(radius: 5)
                            }
                            
                        }
                        
                    }
                }
                
            }
        }
    }
}

#Preview {
    ScrollViewStories()
}
