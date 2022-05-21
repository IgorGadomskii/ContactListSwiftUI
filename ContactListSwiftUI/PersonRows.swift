
import SwiftUI

struct PersonRows: View {
    let person: Person
    
    @State private var isPresented = false
    
    var body: some View {
        NavigationLink (person.fullname) {
            PersonalContact(person: person, isPresentes: $isPresented)
        }
    }
}

struct PersonRows_Previews: PreviewProvider {
    static var previews: some View {
        PersonRows(person: Person(name: "", surname: "", email: "", phoneNumber: ""))
    }
}
