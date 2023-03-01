//
//  UserViewModel.swift
//  USUI
//
//  Created by MD. Rezaul Islam Tarek on 1/3/23.
//

import Foundation

class UserViewModel{
    var repo : UserRepo
    init(repo: UserRepo) {
        self.repo = repo
    }
    func getUserlist() -> [ModelUser] {
        return repo.getUsersData()
    }
    

}
