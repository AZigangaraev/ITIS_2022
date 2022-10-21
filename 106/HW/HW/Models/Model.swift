//
//  Model.swift
//  HW
//
//  Created by Максим Тарасов on 21.10.2022.
//

import UIKit

struct Animal{
var name: String
var food: String
var weight: Int
var age: Int
var price: Int
    
    public func printAnimal(){
        print("\(name) Food: \(food) Age: \(age) Price: \(price)")
    }
}

struct GetAnimal{
    static func getFirst() ->[Animal]{
        return [
            Animal(name: "Macaca", food: "banana" ,weight: 9, age: 2,price: 768374),
            Animal(name: "Giraffe", food: "herbs" ,weight: 472, age: 3,price: 1239805),
            Animal(name: "Camel", food: "herbs" ,weight: 700, age: 2,price: 4353425),
            Animal(name: "Crocodile", food: "meat" ,weight: 575, age: 4,price: 328475324),
            Animal(name: "Tiger", food: "meat" ,weight: 150, age: 5,price: 2000000),
        ]
    }
    
    static func getSecond() ->[Animal]{
        return [
            Animal(name: "Dog", food: "meat" ,weight: 5, age: 2,price: 7872),
            Animal(name: "Cat", food: "mouse" ,weight: 5, age: 3,price: 5436),
            Animal(name: "Mouse", food: "grains" ,weight: 5, age: 1,price: 5467),
            Animal(name: "Snake", food: "mouse" ,weight: 5, age: 3,price: 4325),
            Animal(name: "Chipmunk", food: "nuts" ,weight: 1, age: 1,price: 2000),
            Animal(name: "Turtle", food: "grasses" ,weight: 1, age: 7,price: 7872),
            Animal(name: "DwarfPig", food: "grains" ,weight: 3, age: 3,price: 3673),
            Animal(name: "Capybara", food: "grasses" ,weight: 40, age: 2,price: 8906),
            Animal(name: "Chinchilla", food: "fruit" ,weight: 2, age: 6,price: 7648),
            Animal(name: "Hedgehog", food: "beetles" ,weight: 1, age: 3,price: 2345),
        ]
    }
}


