//
//  TodoListApp.swift
//  TodoList
//
//  Created by MacBookair on 21/11/23.
//

import SwiftUI

@main
struct TodoListApp: App {
    
    @StateObject var lista: ModelListView = ModelListView()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
            }.environmentObject(lista)
        }
    }
}
