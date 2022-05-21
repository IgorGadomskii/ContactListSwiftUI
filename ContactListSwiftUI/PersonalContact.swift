//
//  PersonalContact.swift
//  ContactListSwiftUI
//
//  Created by Macbook on 20.05.2022.
//

import SwiftUI

struct PersonalContact: View {
    
    let person: Person
    @Binding var isPresentes: Bool
    
    var body: some View {
      
        VStack{
            Image(systemName: "person")
                .resizable()
                .frame(width: 250, height: 250)
            VStack (alignment: .leading){
                Text(person.phoneNumber)
                Text(person.email)
                
            }
        }
        .navigationTitle(person.fullname)
        .padding()
        Spacer()
        
    }
}

struct PersonalContact_Previews: PreviewProvider {
    static var previews: some View {
        PersonalContact(person: Person.init(
            name: "",
            surname: "",
            email: "",
            phoneNumber: ""
        ), isPresentes: .constant(true))
    }
}
