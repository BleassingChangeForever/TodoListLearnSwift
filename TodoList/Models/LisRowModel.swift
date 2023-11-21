//
//  LisRowModel.swift
//  TodoList
//
//  Created by MacBookair on 21/11/23.
//

import SwiftUI

struct ItemModel:Identifiable {
    
    let id :String = UUID().uuidString
    let title:String
    let isValidade: Bool
}



