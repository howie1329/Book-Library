//
//  Book.swift
//  Book Library
//
//  Created by Howard Thomas on 2/14/23.
//

import Foundation

class Book: Identifiable, Decodable {
    
    var id: Int
    var title: String
    var author: String
    var isFavourite: Bool
    var currentPage: Int
    var rating: Int
    var content: [String]
}
