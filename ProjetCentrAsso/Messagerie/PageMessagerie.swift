//
//  PageMessagerie.swift
//  ProjetCentrAsso
//
//  Created by apprenant77 on 07/03/2025.
//

import SwiftUI

struct PageMessagerie: View {
    @State var searchText = ""
    @State var listeDiscussion: [ListDiscussion] = arrayDiscussion
    var filteredDiscussions: [ListDiscussion] {
        if searchText.isEmpty {
            return arrayDiscussion
        } else {
            return arrayDiscussion.filter { $0.pseudo.localizedCaseInsensitiveContains(searchText) }
            }
        }
    var body: some View {
        NavigationStack {
                List(filteredDiscussions) { listDiscussions in
                    NavigationLink {
                        PageMessages(listDiscussion:listDiscussions)
                    }label : {
                        HStack {
                            Image(listDiscussions.pdp)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60)
                                .clipShape(Circle())
                            VStack(alignment: .leading ) {
                                HStack {
                                    Text(listDiscussions.pseudo)
                                        .bold()
                                        .shadow(radius: 5)
                                    Spacer()
                                    Text(listDiscussions.dateLastMessage)
                                        .font(.subheadline)
                                        .foregroundStyle(.gray)
                                }
                                    Text(listDiscussions.lastMessage)
                                    .padding()
                            }
                        }
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        NavigationLink(destination: PageProfil()) {
                            Image("franckpdp")
                                .resizable()
                                .scaledToFit()
                                .scaledToFill()
                                .clipShape(Circle())
                                .frame(width: 50)
                        } } }
                .toolbar {
                        ToolbarItem {
                                Button(action: {
                                    print("Action du bouton")
                                }) {
                                    Image(systemName: "plus.circle")
                                        .foregroundColor(.blue)
                                        .imageScale(.large) } } }
                .searchable(text: $searchText, prompt: "Recherche")
                .navigationTitle("Discussions")
            }
        }
    }
#Preview {
    PageMessagerie()
}
