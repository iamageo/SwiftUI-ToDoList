//
//  ListRowView.swift
//  SwiftUI-ToDoList
//
//  Created by Geovani Amaral on 24/11/24.
//

import SwiftUI

struct ListRowView: View {
    
    var item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

#Preview {
    ListRowView(item: ItemModel(title: "Example", isCompleted: true))
    ListRowView(item: ItemModel(title: "Example", isCompleted: false))
}
