//
//  name.swift
//  LoginMenu
//
//  Created by Bulat Serimbetov on 31.12.2021.
//

import Foundation




struct Person: Equatable{
    var name: String
    var surname: String
    var fatherName: String
    var login: String
    var password: String
    
    
    static func == (lhs: Person, rhs: Person) -> Bool {
        lhs.login == rhs.login && lhs.password == rhs.password
    }
}

class ArrayPerson  {
    static var shared = ArrayPerson()
    private init() {}
    
    var array = [Person]()
    
    }

