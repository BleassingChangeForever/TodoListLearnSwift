//
//  HomeView.swift
//  TodoList
//
//  Created by MacBookair on 21/11/23.
//

import SwiftUI

struct HomeView: View {
    
    
    @State var data :[ItemModel] = [
    
        ItemModel(title: "This is the frist title", isValidade: true),
        
        ItemModel(title: "This is the secound title", isValidade: true),
        
        ItemModel(title: "This is the 3 title", isValidade: false)
        
    ]
    
    
    var body: some View {
        
        NavigationStack {
            
            List {
                
                ForEach(data) { lista  in
                    
                    ListViewItem(modelo: lista)

                }
                
                
                
                
            }.navigationTitle("Todo List ✨")
                .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: {
                    
                    AddNewItem()
                }))
            
            
        }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

