//
//  User.swift
//  Log In
//
//  Created by admin2 on 12.04.2021.
//

class User{
    
    private var username: String
    private var password: String
    
    init(username: String, password: String){
        self.username = username
        self.password = password
    }
    
    func check(username: String, password: String) -> Bool {
        if self.username == username && self.password == password { return true }
    return false
    }
}
