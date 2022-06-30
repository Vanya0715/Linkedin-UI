//
//  PostView.swift
//  LinkedinClone
//
//  Created by Divyansh Dwivedi on 26/05/22.
//
import SwiftUI


var postData: [PostData] = [
    .init(id: 0, Image: "0", title: "iNeuron", followers: 4066, profileImage: "00"),
    .init(id: 1, Image: "1", title: "Learnyst", followers: 2345, profileImage: "01"),
    .init(id: 2, Image: "2", title: "Synopsys inc", followers: 1235, profileImage: "02"),
    .init(id: 3, Image: "3", title: "Skill-Lync", followers: 908, profileImage: "03"),
    .init(id: 4, Image: "4", title: "Intel", followers: 1234, profileImage: "04"),
    .init(id: 5, Image: "5", title: "HP", followers: 567, profileImage: "05"),
    .init(id: 6, Image: "6", title: "JungleWorks", followers: 346, profileImage: "00"),
    .init(id: 7, Image: "7", title: "Arrikto", followers: 4512, profileImage: "01"),
    .init(id: 8, Image: "8", title: "TATA Power", followers: 7612, profileImage: "02"),
    .init(id: 9, Image: "9", title: "Apple", followers: 987, profileImage: "03"),
    .init(id: 10, Image: "10", title: "Amazon Web Services", followers: 8093, profileImage: "04"),
    .init(id: 11, Image: "11", title: "Microsoft", followers: 1209, profileImage: "05"),
    .init(id: 12, Image: "12", title: "Scaler", followers: 3409, profileImage: "00"),
    .init(id: 13, Image: "13", title: "Master's Union", followers: 2457, profileImage: "01"),
    .init(id: 14, Image: "14", title: "Adobe", followers: 3579, profileImage: "02"),
    .init(id: 15, Image: "15", title: "Imperva", followers: 2468, profileImage: "03"),
    .init(id: 16, Image: "16", title: "GitHub", followers: 6790, profileImage: "04")
    ]

struct PostView: View {
    var body: some View {
        ScrollView (.vertical,showsIndicators: false) {
            VStack(alignment: .center) {
                ForEach(postData, id: \.id) { data in
                    PostCardview(data: data)
                    HStack(alignment: .center, spacing: 45) {
                        ForEach(socialView, id: \.ids)  { data in
                            VStack {
                                Image(systemName: data.image)
                                Text("\(data.title)")
                            }
                            .foregroundColor(.black.opacity(0.8))
                            .font(.subheadline)
                        }
                   
                    }.padding(.horizontal)
                }

            }
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
