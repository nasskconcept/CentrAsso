//
//  PageMessages.swift
//  ProjetCentrAsso
//
//  Created by apprenant77 on 07/03/2025.
//

import SwiftUI

struct PageMessages: View {
    var listDiscussion: ListDiscussion
    var messages: [String] {
        switch listDiscussion.pseudo {
        case "Sarah":
            return ConversationSarah
        case "John":
            return ConversationJohn
        case "Sue-Lee":
            return ConversationSueLee
        case "Maël":
            return ConversationMael
        case "Alain":
            return ConversationAlain
        case "Sylvain":
            return ConversationSylvain
        case "Samuel":
            return ConversationSamuel
        default:
            return ["Aucun message disponible"]
        }
    }
    var body: some View {
        VStack {
            HStack {
                Image(listDiscussion.pdp)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60)
                    .clipShape(Circle())
                VStack {
                    Text(listDiscussion.pseudo)
                        .bold()
                        .shadow(radius: 5)
                    Text("actif il y a ...")
                        .foregroundStyle(.gray)
                        .font(.subheadline)
                }
                Spacer()
                Image(systemName: "phone")
                Image(systemName: "video")
            }
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    ForEach(0..<messages.count, id: \.self) { i in
                        HStack {
                            if i % 2 == 0 {
                                Rectangle()
                                    .frame(width: 100)
                                    .opacity(0)
                                Text(messages[i])
                                    .font(.subheadline)
                                    .padding()
                                    .background(Color.blue.opacity(0.3))
                                    .cornerRadius(10) }
                            else {
                                Text(messages[i])
                                    .font(.subheadline)
                                    .padding()
                                    .background(Color.green.opacity(0.3))
                                    .cornerRadius(10)
                                Rectangle()
                                    .frame(width: 100)
                                    .opacity(0)
                            }
                        }
                    }
                                        
                }
            }
            HStack {
                Image(systemName: "plus.circle")
                    .font(.system(size: 20))
                Image(systemName: "smiley")
                    .font(.system(size: 20))
                TextField("Message...", text: .constant(""))
                    .frame(width: 200)
                Image(systemName: "mic.fill")
                    .font(.system(size: 20))
            }
            
            .frame(width: 450, height: 50)
            .border(.gray)
            
        }
        .toolbar(.hidden, for: .tabBar)
    }
}

#Preview {
    PageMessages(listDiscussion: arrayDiscussion[0])
}
