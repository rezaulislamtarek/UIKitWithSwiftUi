//
//  UserListView.swift
//  USUI
//
//  Created by MD. Rezaul Islam Tarek on 1/3/23.
//

import SwiftUI

struct UserListView: View {
    
    var vm = UserViewModel(repo: UserRepo())
    let onSelectedUser : (ModelUser) -> Void
    
    var body: some View {
        List(vm.getUserlist()){ user in
            VStack{
                Text(user.name)
                Text("age: \(user.age)")
                Text(user.address)
            }.onTapGesture {
                print(user)
               onSelectedUser(user)
            }
        }
    }
}


struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView{ u in
            
        }
    }
}
