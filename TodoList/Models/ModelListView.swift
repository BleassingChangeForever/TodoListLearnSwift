//
//  ModelHomeView.swift
//  TodoList
//
//  Created by MacBookair on 30/11/23.
//

import Foundation
import SwiftUI



class ModelListView :ObservableObject{
    
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
    
    
    func salvar (texto:String){
        
       
         let retornando = verificar(texto: texto)
        
        if retornando.is_validado{
            
            lista_objecto.append(ItemModel(title: texto, isValidade: Bool.random()))

            
        }
       
    
        
    }
    
    func verificar(texto:String) -> (is_validado:Bool,alerta:Alert) {
        
        
       var is_validado:Bool = false;
        var alerta:Alert
        guard texto.count>=3 else {
           
            return (is_validado, Alert(title: Text("Precisam ser 3 valores")));
        }
        
        is_validado.toggle()
        alerta = Alert(title: Text("Sucesso ao salvar"))
        
        return (is_validado,alerta)
    }
    
    
    
    
   
    
}
