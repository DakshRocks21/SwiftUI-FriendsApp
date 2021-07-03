//
//  FriendDetailView.swift
//  FriendsApp
//
//  Created by Daksh Thapar on 3/7/21.
//

import SwiftUI

struct FriendDetailView: View {
    
    var friend: Friend
    
    var body: some View {
        Text(friend.school)
            .navigationTitle(friend.name)
    }
}

struct FriendDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FriendDetailView(friend: Friend(name: "Daksh Thapar",
                                        icon: "pc",
                                        school: "SST",
                                        slothImage: "sloth1"))
    }
}
