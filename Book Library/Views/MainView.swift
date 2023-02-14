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
        NavigationView {
            
            ScrollView{
                
                LazyVStack{
                    ForEach(model.books){ book in
                        
                        NavigationLink {
                            Text("Hello")
                        } label: {
                            MainViewRow(title: book.title, author: book.author, bookId: book.id,isFavourite: book.isFavourite)
                        }
                        .foregroundColor(.black)
                    }
                }
                .navigationTitle("My Library")
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(BookModel())
    }
}
