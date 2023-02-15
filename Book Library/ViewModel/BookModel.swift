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
    
    func updateFavourite(forId: Int) {
        if let index = books.firstIndex(where: { $0.id == forId }) {
            books[index].isFavourite.toggle()
        }
    }
    
}
