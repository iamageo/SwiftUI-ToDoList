//
//  ContentView.swift
//  SwiftUI-ToDoList
//
//  Created by Geovani Amaral on 24/11/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel: ListViewModel = ListViewModel()
    
    var body: some View {
        NavigationView {
            ZStack{
                if(viewModel.items.isEmpty) {
                    NoItemsView()
                } else {
                    List {
                        ForEach(viewModel.items) { item in
                            ListRowView(item: item).onTapGesture {
                                withAnimation(.linear) {
                                    viewModel.updateItem(item: item)
                                }
                            }
                        }
                        .onDelete(perform: viewModel.deleteItem)
                        .onMove(perform: viewModel.onMoveItem)
                    }
                    .listStyle(PlainListStyle())
                }
            }
            
            .navigationTitle("Todo List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: NavigationLink("Add", destination: AddView()))
            
        }
    }
    
}

#Preview {
    ContentView()
}
