//
//  LogedInViewController.swift
//  Log In
//
//  Created by admin2 on 12.04.2021.
//

import UIKit

class LogedInViewController: UIViewController {
    
    @IBOutlet var statusLabel: UILabel!
    
    static private var users: [User] = [
        User(username: "Ilya",password: "112233"),
        User(username: "Bin",password: "Bom"),
        User(username: "Fizz", password: "Buzz")
    ]
    
    var userName: String = ""
    var UserPass: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        statusLabel.text = findUser()
    }
    
    private func findUser() -> String {
        for user in LogedInViewController.users {
            if user.check(username: userName, password: UserPass) {return "Hello \(userName)"}
        }
        return "Check your login data and try again"
    }
}
