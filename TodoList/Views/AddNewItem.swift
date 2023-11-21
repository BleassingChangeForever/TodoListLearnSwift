//
//  AddNewItem.swift
//  TodoList
//
//  Created by MacBookair on 21/11/23.
//

import SwiftUI

struct AddNewItem: View {
    
    @State var textnome :String = ""
    var body: some View {
        
        ScrollView {
            
            VStack(spacing:15) {
                
                TextField("type something here", text: $textnome)
                    .padding()

                    .background(.gray.opacity(0.1))
                    .cornerRadius(10)

                    .padding()
                
                Button(action: {
                    
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

    }
}

struct AddNewItem_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationStack {
            AddNewItem()
        }
       
    }
}
