//
//  NoItemsView.swift
//  SwiftUI-ToDoList
//
//  Created by Geovani Amaral on 19/12/24.
//

import SwiftUI

struct NoItemsView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("There are no items")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Are you a producti person? I think you should click the add button and add a bunch of items to your todo list!")
                
                NavigationLink(
                    destination: AddView(),
                    label: {
                        Text("Add Someting")
                            .foregroundColor(.white)
                            .font(.headline)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .background(Color.accentColor)
                            .cornerRadius(10)
                    }
                )
            }
            .multilineTextAlignment(.center)
            .padding(40)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    NoItemsView()
}
