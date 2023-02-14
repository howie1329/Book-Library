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
                                        .padding(.top)
                                        VStack{
                                            Button(action: {}) {
                                                Image(systemName: "star")
                                            }
                                        }
                                    }}
                                .padding([.leading,.trailing])
                                
                                VStack{
                                    Image("cover" + String(book.id))
                                        .resizable()
                                        .aspectRatio(CGSize(width: 275, height: 400), contentMode: .fit)
                                        .clipped()
                                        .padding()
                                }
                                
                                
                            }
                        }
                        .padding()
                        
                        
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
