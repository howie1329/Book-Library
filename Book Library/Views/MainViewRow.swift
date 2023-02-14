//
//  MainViewRow.swift
//  Book Library
//
//  Created by Howard Thomas on 2/14/23.
//

import SwiftUI

struct MainViewRow: View {
    
    @State var book: Book
    
    var body: some View {
        ZStack(alignment:.bottom){
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 10)
                .aspectRatio(CGSize(width: 260, height: 450), contentMode: .fit)
            
            VStack{
                
                VStack{
                    HStack(spacing:50){
                        VStack(alignment:.leading){
                            Text(book.title)
                                .font(.title)
                                .bold()
                            Text(book.author)
                                .bold()
                        }
                        VStack{
                            if book.isFavourite == true {
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width:40,height: 40)
                                    .foregroundColor(.yellow)
                            }
                        }
                    }
                    
                }
                
                VStack{
                    Image("cover" + String(book.id))
                        .resizable()
                        .frame(width:330,height: 500)
                        .clipped()
                }
            }
            .padding()
        }
        .padding()
    }
}

struct MainViewRow_Previews: PreviewProvider {
    static var previews: some View {
        var model = BookModel()
        MainViewRow(book: model.books[0])
    }
}
