//
//  HomeView.swift
//  TodoList
//
//  Created by MacBookair on 21/11/23.
//

import SwiftUI

struct HomeView: View {
    
    
    @ObservedObject var data  = ModelHomeView()
    
    
    var body: some View {
        
        NavigationStack {
            
            List {
                
                ForEach(data.lista_objecto) { lista  in
                    
                    ListViewItem(modelo: lista)

                }.onDelete(perform: data.eliminar)
                    .onMove (perform: data.editar)
                
                
                
                
            }
            
            
            .navigationTitle("Todo List ✨")
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

