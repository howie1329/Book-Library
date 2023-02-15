//
//  Book_LibraryApp.swift
//  Book Library
//
//  Created by Howard Thomas on 2/13/23.
//

import SwiftUI

@main
struct Book_LibraryApp: App {
    var model = BookModel()
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(model)
        }
    }
}
