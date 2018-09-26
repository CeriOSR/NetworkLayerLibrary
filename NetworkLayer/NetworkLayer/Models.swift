//
//  Posts.swift
//  NetworkLayer
//
//  Created by Rey Cerio on 2018-09-25.
//  Copyright © 2018 Rey Cerio. All rights reserved.
//

import Foundation

struct Post: Codable {
    let id: Int
    let title: String
    let body: String
}

struct Comments: Codable {
    let id: Int
    let title: String
    let body: String
}
