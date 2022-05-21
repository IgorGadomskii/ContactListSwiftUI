//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Macbook on 20.05.2022.
//

import SwiftUI

struct ContactsList: View {
    
    @Binding var persons: [Person]
    
    var body: some View {
        NavigationView {
                List(persons){
                    person in PersonRows(person: person)
                }
            .navigationTitle("Contact List")
        }
    }
}

struct ContactsList_Previews: PreviewProvider {
    static var previews: some View {
        ContactsList(persons: .constant([]))
    }
}
