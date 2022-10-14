//
//  TransformData.swift
//  HomeWork04
//
//  Created by Илья Казначеев on 02.10.2022.
//

import Foundation

class DB{
    
    static var username: String = ""
    
    func getUsername() -> String{
        return DB.username
    }
    
    
    func setUsername(username: String) -> Void{
        return DB.username  = username
    }
    
}
