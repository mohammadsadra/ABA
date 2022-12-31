//
//  ContentView.swift
//  ABA
//
//  Created by Mohammadsadra on 1/1/23.
//

import SwiftUI
import CoreData

struct ContentView: View {

    private var items = ["Animals", "Nature", "Sleep", "Songs"]

    var body: some View {
        VStack{
            NavigationView {
                List {
                    ForEach(items, id: \.self) { item in
                        NavigationLink {
                            Text("ss")
                        } label: {
                            HStack{
                                Image("Dog")
                                    .resizable()
                                    .frame(width: 80, height: 60)
                                Text(item)
                                    
                            }
                        }
                    }
                }
                .navigationTitle("ABA: Learn sounds :)")
    //            .toolbar {
    //                ToolbarItem {
    //                    Button(action: addItem) {
    //                        Label("Add Item", systemImage: "plus")
    //                    }
    //                }
    //            }
            }
        }
    }

    private func addItem() {
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
