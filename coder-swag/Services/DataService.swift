//
//  DataService.swift
//  coder-swag
//
//  Created by Andrew Taylor on 09/09/2017.
//  Copyright © 2017 Andrew Taylor. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
    Category(title: "SHIRTS", imageName: "shirts.png"),
    Category(title: "HOODIES", imageName: "hoodies.png"),
    Category(title: "HATS", imageName: "hats.png"),
    Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beany", price: "£18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "£12", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat Blue", price: "£11", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Hat Red", price: "£13", imageName: "hat04.png")
        ]
    
    private let hoodies = [
        Product(title: "Devslopes Hoodie Beany", price: "£18", imageName: "hoodie01.png"),
        Product(title: "Devslopes Hoodie Black", price: "£12", imageName: "hoodie02.png"),
        Product(title: "Devslopes Hoodie  Blue", price: "£11", imageName: "hoodie03.png"),
        Product(title: "Devslopes Hoodie Red", price: "£13", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Shirt Beany", price: "£18", imageName: "shirt01.png"),
        Product(title: "Devslopes Shirt Black", price: "£12", imageName: "shirt02.png"),
        Product(title: "Devslopes Shirt  Blue", price: "£11", imageName: "shirt03.png"),
        Product(title: "Devslopes Shirt Red", price: "£13", imageName: "shirt04.png"),
        Product(title: "Devslopes Shirt Red", price: "£13", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()

    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "Shirts":
            return getShirts()
        case "Hats":
            return getHats()
        case "Hoodies":
            return getHoodies()
        default:
           return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    func getHoodies() -> [Product] {
        return hoodies
    }
    func getShirts() -> [Product] {
        return shirts
    }

    
}
