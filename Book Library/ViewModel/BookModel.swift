//
//  BookModel.swift
//  Book Library
//
//  Created by Howard Thomas on 2/14/23.
//

import Foundation

class BookModel: ObservableObject {
    
    @Published var books = [Book]()
    
    init(){
        
        //Create an instance of data service and return data
        self.books = DataService.getLocalData()
    }
    
}
