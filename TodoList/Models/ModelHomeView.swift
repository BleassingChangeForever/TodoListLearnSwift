//
//  ModelHomeView.swift
//  TodoList
//
//  Created by MacBookair on 30/11/23.
//

import Foundation



class ModelHomeView :ObservableObject{
    
    @Published var lista_objecto :[ItemModel] = []
    
    
    
    init() {
        self.lista_objecto.append(ItemModel(title: "This is the frist title", isValidade: true))
        
        self.lista_objecto.append(ItemModel(title: "This is the Secound title", isValidade: false))
        
        self.lista_objecto.append(ItemModel(title: "This is the third title", isValidade: false))
    }
    
    
    
    func eliminar(posicao: IndexSet){
        lista_objecto.remove(atOffsets: posicao)
    }
    
    
    func editar(posicao: IndexSet, nova_posicao:Int)  {
        
        lista_objecto.move(fromOffsets: posicao, toOffset: nova_posicao)
        
    }
    
    
    
}
