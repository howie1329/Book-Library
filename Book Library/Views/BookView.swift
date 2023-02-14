//
//  BookView.swift
//  Book Library
//
//  Created by Howard Thomas on 2/14/23.
//

import SwiftUI

struct BookView: View {
    
    @State var book:Book

    var body: some View {
        VStack(spacing:10){
            Text("Read Now!")
                .font(.title)
            //Button
            Image("cover" + String(book.id))
                .resizable()
                .frame(width: 250,height: 350)
            Text("Mark for later!")
                .bold()
            //Button
            
            Button {
                book.isFavourite.toggle()
            } label: {
                if book.isFavourite{
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }else{
                    Image(systemName: "star")
                        .foregroundColor(.yellow)
                }
                
            }

            Text("Rate " + (book.title))
                .bold()
            //Picker
            Picker("",selection: $book.rating){
                Text("1").tag(1)
                Text("2").tag(2)
                Text("3").tag(3)
                Text("4").tag(4)
                Text("5").tag(5)
                
            }
            .pickerStyle(.segmented)
            .frame(width: 300)
        }.navigationTitle(book.title)
        
    }
    
}

struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        var model = BookModel()
        BookView(book: model.books[0])
    }
}
