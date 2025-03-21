//
//  StoriesTemp.swift
//  ProjetCentrAsso
//
//  Created by apprenant77 on 11/03/2025.
//

import SwiftUI

struct StoryDetails: View {
    @State var story: Story
    @State var storyIndex = 0
    @Environment(\.presentationMode) var presentationMode
    let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    var body: some View {
        
        ZStack {
            Image(story.background)
                .resizable()
                .scaledToFit()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            Image(story.image)
                .resizable()
                .scaledToFit()
                .frame(width: 390)
            VStack {
                Spacer()
                Text(story.text1)
                    .font(.title2)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                    .rotationEffect(.degrees(Double(story.rotationDegrees1)))
                    .offset(x: -70, y: -25)
                Text(story.text2)
                    .font(.body)
                    .foregroundColor(.white)
                    .padding()
                    .rotationEffect(.degrees(Double(story.rotationDegrees2)))
                    .offset(x: 30, y: 100)
                Spacer()
            }
            .padding(.horizontal, 40)
            .padding(.bottom, 50)
            .zIndex(2)
            
            VStack {
                HStack {
                    Image(story.pdp)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.white, lineWidth: 5)
                        )
                        .padding(.leading, 20)
                    
                    Text(story.name)
                        .font(.title3)
                        .bold()
                        .frame(width: 180)
                        .foregroundColor(.white)
                        .padding()
                    
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                            .padding()
                    }
                }
                Spacer()
            }
        }
        .navigationBarBackButtonHidden(true)
        .toolbar(.hidden,for:.tabBar)
        .background(Color.clear)
        .onReceive(timer) { input in
            nextStory()
            
        }
    }
    
    func nextStory() {
        if storyIndex < stories.count - 1 {
            storyIndex += 1
            story = stories[storyIndex]
        }
    }
}



#Preview {
    StoryDetails(story: story1)
}
