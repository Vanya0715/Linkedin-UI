//
//  PostCardview.swift
//  LinkedinClone
//
//  Created by Divyansh Dwivedi on 26/05/22.
//

import SwiftUI
struct SocialView {
    var ids: Int
    var image: String
    var title: String
    
 
}

var socialView: [SocialView] = [
    .init(ids: 0, image: "hand.thumbsup", title: "Like"),
    .init(ids: 1, image: "text.bubble", title: "Comment"),
    .init(ids: 2, image: "arrow.turn.up.right", title: "Share"),
    .init(ids: 3, image: "paperplane.fill", title: "Send")
    
]

struct PostCardview: View {
    var data: PostData
    var body: some View {
        VStack(alignment:.leading) {
            Rectangle()
                .fill(.gray.opacity(0.3))
                .frame(width: .infinity, height: 8)
                .ignoresSafeArea(.all)

            HStack(alignment:.center) {
                Image(data.profileImage)
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70, alignment: .leading)
                    
                
                VStack(alignment: .leading) {
                    Text(data.title)
                        .font(.body)
                    Text("\(data.followers) followers")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text("8m")
                        .foregroundColor(.gray)
                        .font(.caption)
                }
                
                Spacer()
                
                Image(systemName: "ellipsis")
            }.padding(.horizontal)
            
            Text("Looking for iOS-15 online course ? \nLearn Swift UI with iOS-15 now at Udemy")
                .padding(.horizontal)
            
            Image(data.Image)
                .resizable()
                .aspectRatio( contentMode: .fit)
                .frame(width: .infinity, height: .infinity, alignment: .center)
            
            Divider()


        }
    }
}


