//
//  ScrollViewSuggestions.swift
//  ProjetCentrAsso
//
//  Created by apprenant77 on 12/03/2025.
//

import SwiftUI

struct ScrollViewSuggestions: View {
    var body: some View {
        HStack {
            Text("Suggestions")
                .font(.title)
                .fontWeight(.bold)
                .padding(15)
            Spacer()
        }
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15) {
                ForEach(associations) { asso in
                    NavigationLink(destination: PageProfilDetail(association: asso)) {
                        Image(asso.pdp)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                            .shadow(radius: 5)
                    }
                }
            }
            .padding()
        }
    }
}
#Preview {
    ScrollViewSuggestions()
}
