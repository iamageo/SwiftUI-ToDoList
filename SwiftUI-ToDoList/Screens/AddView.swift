//
//  AddView.swift
//  SwiftUI-ToDoList
//
//  Created by Geovani Amaral on 24/11/24.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @StateObject var viewModel: ListViewModel = ListViewModel()
    @State var textFieldText = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    TextField("Type something here", text: $textFieldText)
                        .padding(.horizontal)
                        .frame(height: 55)
                        .cornerRadius(10)
                    
                    Button(action: saveButtonPressed, label: {
                        Text("save".uppercased())
                            .foregroundColor(.white)
                            .font(.headline)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .background(Color.accentColor)
                            .cornerRadius(10)
                    })
                }.padding(16)
                
            }
            .navigationTitle("Add an Item")
            .alert(isPresented: $showAlert, content: getAlert)
            
        }
        
    }
    
    func saveButtonPressed() {
        if textIsAppropriate() {
            viewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func textIsAppropriate() -> Bool {
        if(textFieldText.count < 3) {
            alertTitle = "Your new todo item must be at least 3 characters"
            showAlert.toggle()
            return false
        }
        
        return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
    
}

#Preview {
    AddView()
}
