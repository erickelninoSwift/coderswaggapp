//
//  categorymodel.swift
//  CoderSwagg
//
//  Created by El nino Cholo on 2020/08/10.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import Foundation

struct categorymodel
{
    private (set) public var title:String
    private (set) public var imageName:String
    
    init(title : String, imageName: String)
    {
        self.title =  title
        self.imageName = imageName
    }
}
