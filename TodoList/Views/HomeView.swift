//
//  HomeView.swift
//  TodoList
//
//  Created by MacBookair on 21/11/23.
//

import SwiftUI

struct HomeView: View {
    
    
    @EnvironmentObject var lista:ModelListView

    
    
    var body: some View {
        
        NavigationStack {
            
            List {
                
                ForEach(lista.lista_objecto) { lista  in
                    
                    ListViewItem(modelo: lista)

                }.onDelete(perform: lista.eliminar)
                    .onMove (perform: lista.editar)
                
                
                
                
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
        NavigationView {
            HomeView()
        }.environmentObject(ModelListView())
    }
}

