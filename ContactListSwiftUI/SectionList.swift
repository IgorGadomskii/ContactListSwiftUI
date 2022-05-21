//
//  SectionList.swift
//  ContactListSwiftUI
//
//  Created by Macbook on 21.05.2022.
//

import SwiftUI

struct SectionList: View {
    
    @Binding var persons: [Person]
    
    var body: some View {
        List(persons) { person in
            Section(header: Text(person.fullname))
            {
                Text(person.phoneNumber)
                Text(person.email)
            }
            
        }
    }
}

struct SectionList_Previews: PreviewProvider {
    static var previews: some View {
        SectionList(persons: .constant([]))
    }
}
