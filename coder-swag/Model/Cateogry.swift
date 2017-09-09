//
//  Cateogry.swift
//  coder-swag
//
//  Created by Andrew Taylor on 09/09/2017.
//  Copyright © 2017 Andrew Taylor. All rights reserved.
//

import Foundation

struct Category {
    
    private(set) public var title: String
    private(set) public var imageName: String

    init(title: String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
    
}
