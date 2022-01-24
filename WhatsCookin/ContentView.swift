//
//  ContentView.swift
//  WhatsCookin
//
//  Created by Chosum Tashi on 1/23/22.
//

import SwiftUI
struct ContentView: View {
  var body: some View {
   NavigationView {
     List {
      NavigationLink("Home", destination: HomePage(text:"Home"))
       NavigationLink("Explore", destination: ExplorePage(text:"Explore"))
       NavigationLink("Profile", destination: ProfilePage(text:"Profile"))
     }
     .navigationTitle("Explore")
   }
 }
}
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
struct HomePage: View {
  var text: String
  
  var body: some View {
   AsyncImage(url: URL(string: "https://media.istockphoto.com/photos/small-cap-investment-category-stock-market-companies-3d-picture-id1160055448"))
    .frame(width: 200, height: 200)
    .clipped()
    Text(text)
      .frame(width: 200, height: 200)
      .navigationTitle(text.description.capitalized)
   Spacer()
  }
}
struct ExplorePage: View {
  var text: String
  
  var body: some View {
   AsyncImage(url: URL(string: "https://www.invitinghome.com/wp-content/uploads/2019/07/aac092-1.jpg"))
    .frame(width: 200, height: 200)
    .clipped()
    Text(text)
      .frame(width: 200, height: 200)
      .navigationTitle(text.description.capitalized)
   Spacer()
  }
}
struct ProfilePage: View {
  var text: String
  
  var body: some View {
   AsyncImage(url: URL(string: "https://www.seekpng.com/png/small/966-9665493_my-profile-icon-blank-profile-image-circle.png"))
    .frame(width: 200, height: 200)
    .clipped()
    Text(text)
      .frame(width: 200, height: 200)
      .navigationTitle(text.description.capitalized)
   Spacer()
  }
}
