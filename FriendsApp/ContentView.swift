//
//  ContentView.swift
//  FriendsApp
//
//  Created by Daksh Thapar on 3/7/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var friends = [Friend(name: "Swift Dude",
                          icon: "zzz",
                          school: "Tinkercademy",
                          slothImage: "sloth3",
                          attack: 10,
                          defence: 5),
                   Friend(name: "Apple Dude",
                          icon: "swift",
                          school: "Apple",
                          slothImage: "sloth2",
                          attack: 15,
                          defence: 15),
                   Friend(name: "Smart Dude",
                          icon: "wifi",
                          school: "SST",
                          slothImage: "sloth1",
                          attack: 6,
                          defence: 4)]
    
    var body: some View {
        NavigationView {
            List (0..<friends.count) { index in
                NavigationLink(destination: FriendDetailView(friend: $friends[index])) {
                    Image(systemName: friends[index].icon)
                    
                    VStack(alignment: .leading) {
                        Text(friends[index].name)
                            .bold()
                        HStack {
                            Text(friends[index].school)
                        }
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
