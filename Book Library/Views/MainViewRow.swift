//
//  MainViewRow.swift
//  Book Library
//
//  Created by Howard Thomas on 2/14/23.
//

import SwiftUI

struct MainViewRow: View {
    
    var title:String
    var author:String
    var bookId:Int
    var starStatus = false
    
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
                            Text(title)
                                .font(.title)
                                .bold()
                            Text(author)
                                .bold()
                        }
                        VStack{
                            Button(action: {}) {
                                if starStatus{
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width:100,height: 35)
                                }
                                else{
                                    Image(systemName: "star")
                                        .resizable()
                                        .frame(width:25,height: 25)
                                }
                            }
                        }
                    }
                    
                }
                
                VStack{
                    Image("cover" + String(bookId))
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
        MainViewRow(title: "Amazing Words", author: "Howard Thomas", bookId: 1)
    }
}
