//
//  ContentView.swift
//  Book Library
//
//  Created by Howard Thomas on 2/13/23.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var model:BookModel
    
    var body: some View {
        VStack {
            Text(String(model.books.count))
        }
        .padding()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(BookModel())
    }
}
