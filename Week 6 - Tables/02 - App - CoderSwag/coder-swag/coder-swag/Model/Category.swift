//
//  Category.swift
//  coder-swag
//
//  Created by Guilherme Andre on 08/09/2021.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title:String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
