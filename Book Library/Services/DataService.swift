//
//  DataService.swift
//  Book Library
//
//  Created by Howard Thomas on 2/14/23.
//

import Foundation

class DataService {
    
    // Parse local json file
    
    static func getLocalData() -> [Book]{
        
        
        // Get a url path to json file
        let pathString = Bundle.main.url(forResource: "Data", withExtension: "json")
        
        
        do{
            // read the file into data object
            let jsonData = try Data(contentsOf: pathString!)
            
            // try to decode the json into an array of book
            let jsonDecoder = JSONDecoder()
            let books = try jsonDecoder.decode([Book].self, from: jsonData)
            
            return books
            
        }catch{
            print("error")
        }
        
        return [Book]()
        
    }
    
    
    
}
