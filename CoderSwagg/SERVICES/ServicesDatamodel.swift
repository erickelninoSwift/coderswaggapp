//
//  ServicesDatamodel.swift
//  CoderSwagg
//
//  Created by El nino Cholo on 2020/08/10.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import Foundation

class services
{
    static let myservicesInstance = services()
    
    private let myCategory = [categorymodel(title: "T-SHIRT", imageName: "shirts"),
    categorymodel(title: "HOODIES", imageName: "hoodies"),
    categorymodel(title: "HATS", imageName: "hats"),
    categorymodel(title: "DIGITAL", imageName: "digital")]
    
    
    private let hats = [Product(title: "Devslops Logo Graphic beanie", price: "$18", ImageName: "hat01"),
    Product(title: "Devslops Logo Graphic beanie", price: "$18", ImageName: "hat02"),
    Product(title: "Devslops Logo Hat black", price: "$22", ImageName: "hat03"),
    Product(title: "Devslops Logo hat white", price: "$23", ImageName: "hat04")]
    
    
    private let hoodies = [Product(title: "Devslops logo Hoodie Grey", price: "$10", ImageName: "hoodie01"),
    Product(title: "Devslops logo Hoodie Red", price: "$10", ImageName: "hoodie02"),
    Product(title: "Devslops logo Hoodie yellow", price: "$20", ImageName: "hoodie03"),
    Product(title: "Devslops logo Hoodie Black", price: "$17.5", ImageName: "hoodie04")]
    
    private let shirts = [Product(title: "Devslops logo shirts Grey", price: "$16", ImageName: "shirt01"),
    Product(title: "Devslops logo shirts Red", price: "$10", ImageName: "shirt02"),
    Product(title: "Devslops logo shirts yellow", price: "$10", ImageName: "shirt03"),
    Product(title: "Devslops logo shirts Black", price: "$10", ImageName: "shirt04"),
    Product(title: "Devslops logo shirts Black", price: "$10", ImageName: "shirt05")]
    
    
    private let digitals = [Product]()
    
    func getAllcategory() ->[categorymodel]
    {
        return myCategory
    }
    
    
    func getallitems(categorytitle : String) ->[Product]
    {
        switch categorytitle {
        case "T-SHIRT":
            return shirts
            
            case "HOODIES":
            return hoodies
            
            case "HATS":
            return hats
            
            case "DIGITAL":
            return digitals
            
        default:
            return shirts
        }
    }
    
    
    
    
}
