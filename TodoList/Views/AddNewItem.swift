//
//  AddNewItem.swift
//  TodoList
//
//  Created by MacBookair on 21/11/23.
//

import SwiftUI

struct AddNewItem: View {
    
    @EnvironmentObject var lista:ModelListView

    @State var textnome :String = ""
    
    @State var clicado :Bool = false;
    
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        
        ScrollView {
            
            VStack(spacing:15) {
                
                TextField("type something here", text: $textnome)
                    .padding()

                    .background(.gray.opacity(0.1))
                    .cornerRadius(10)

                    .padding()
                
                Button(action: {
                    
                    verificar(texto: textnome)
                    
                    
                
                    
                }, label: {
                    Text("Save")
                        .accentColor(.white)
                        .frame(maxWidth:.infinity)
                        .frame(height: 50)
                        
                        .background(Color.accentColor)
                        .cornerRadius(10)
                        .padding(.horizontal)
                })
                


            }
        } .navigationTitle("Add an Item 🖊")
           
            .alert(isPresented: $clicado){
              
                    alerta()

                
                
                
                
            }
            
    }
    
    func alerta() -> Alert{
        
        
            
           return Alert(title: Text("Precisam ser 3 valores"))
      
        
    }
    
    func verificar(texto:String) {
        
        clicado = false;
        
        if (textnome.count <= 3){
            
            clicado.toggle()
         
            return
        }
        
        lista.salvar(texto: textnome)
        
        mode.wrappedValue.dismiss()

        
        
    }
    
  
}

struct AddNewItem_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationStack {
            AddNewItem()
        }
       
    }
}
