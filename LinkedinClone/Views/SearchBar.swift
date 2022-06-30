//
//  SearchBar.swift
//  LinkedinClone
//
//  Created by Divyansh Dwivedi on 30/05/22.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack(alignment: .center) {
            Image("demo")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 50, height: 50)
            
            //SearchView
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.blue.opacity(0.1))
                .frame(width: 270, height: 30)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.gray)
                        Spacer()
                    }.padding()
                )
            
            //MessageBox
            Image(systemName: "ellipsis.bubble.fill")
                .resizable()
                .foregroundColor(.gray)
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 25)

        }.padding(.top)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
