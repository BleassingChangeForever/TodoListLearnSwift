//
//  ListViewItem.swift
//  TodoList
//
//  Created by MacBookair on 21/11/23.
//

import SwiftUI

struct ListViewItem: View {
    
     let modelo :ItemModel
    var body: some View {
        HStack {
            Image(systemName: modelo.isValidade ?  "checkmark.circle" : "circle")
                .foregroundColor(modelo.isValidade ? .green : .black)
            Text(modelo.title)
            Spacer()
            
        }
    }
}


struct ListViewItem_Previews: PreviewProvider {
    
    static var item1  =
    
    ItemModel(title: "lavar loica", isValidade: true)
    
    static var item2  =
    
    ItemModel(title: "lavar prato", isValidade: false)
    
    static var previews: some View {
        
        Group {
            ListViewItem(modelo: item1)
            ListViewItem(modelo: item2)

            
        }
        
    }
}
