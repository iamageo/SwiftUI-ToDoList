//
//  ItemModel.swift
//  SwiftUI-ToDoList
//
//  Created by Geovani Amaral on 24/11/24.
//

import Foundation

struct ItemModel: Identifiable, Encodable, Decodable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
    
}
