//
//  ContentView.swift
//  FriendsApp
//
//  Created by Daksh Thapar on 3/7/21.
//

import SwiftUI

struct ContentView: View {
    
    var friends = [Friend(name: "Swift Dude",
                          icon: "zzz",
                          school: "Tinkercademy",
                          slothImage: "sloth3"),
                   Friend(name: "Apple Dude",
                          icon: "swift",
                          school: "Apple",
                          slothImage: "sloth2"),
                   Friend(name: "Smart Dude",
                          icon: "wifi",
                          school: "SST",
                          slothImage: "sloth1")]
    
    var body: some View {
        NavigationView {
            List(friends) { friend in
                NavigationLink(destination: FriendDetailView(friend: friend)) {
                    Image(systemName: friend.icon)
                    
                    VStack(alignment: .leading) {
                        Text(friend.name)
                            .bold()
                        Text(friend.school)
                    }
                }
            }
            .navigationTitle("Friends")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
