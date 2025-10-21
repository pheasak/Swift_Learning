//
//  ContentView.swift
//  learning
//
//  Created by IDG Mac Mini M4 2 on 18/10/25.
//

import SwiftUI

struct ContentView: View {
    @State private var names: [String] = []
    @State private var nameToAdd: String = ""
    @State private var pickedName : String = ""
    @State private var shouldRemovePickedName: Bool = false
    var body: some View {
        VStack {
            
            Text(pickedName.isEmpty ? "": "You picked \(pickedName)")
            
            List {
                    ForEach(names, id: \.description) { name in
                        Text(name)
                    }
            }
            
            TextField("Add Name", text: $nameToAdd)
                .autocorrectionDisabled().textFieldStyle(.automatic)
                           .onSubmit {
                               if(!nameToAdd.isEmpty){
                                   names.append(nameToAdd)
                                   nameToAdd = ""
                               }
                               
                           }
            Divider()
            Toggle("Remove when picked",isOn: $shouldRemovePickedName)
            
            Button {
               if let randomName = names.randomElement(){
                    pickedName = randomName
                   if shouldRemovePickedName {
                        names.removeAll { name in
                        return (name == randomName)
                    }
                }
               }else {
                    pickedName = ""
               }
            } label: {
                Text("Pick Random Name")
                                  .padding(.vertical, 8)
                                  .padding(.horizontal, 16)
            } .buttonStyle(.borderedProminent).font(.title3)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
