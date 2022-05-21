

import SwiftUI

struct ContentView: View {
    @State private var persons = Person.getPersons()
    var body: some View {
        TabView {
            ContactsList(persons: $persons)
                .tabItem {
                    Label("Contacts", systemImage: "person.3.fill")
                }
            SectionList(persons: $persons)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
