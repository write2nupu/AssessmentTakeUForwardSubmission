//
//  ContentView.swift
//  TakeUForwardAssessment
//
//  Created by Nupur on 27/04/26.
//

import SwiftUI

struct ContactsView: View {
    
    @State private var searchText = ""
    @State private var path = NavigationPath()
    
        var filteredContacts: [Contact] {
            searchText.isEmpty
            ? contacts
            : contacts.filter {
                $0.name.localizedCaseInsensitiveContains(searchText)
            }
        }
    
    var body: some View {

            NavigationStack (path: $path) {

                List(filteredContacts) { contact in
                    
                    NavigationLink(value: contact) {

                        HStack(spacing:14) {

                            Circle()
                                .frame(width:50,height:50)

                            VStack(alignment:.leading) {
                                Text(contact.name)
                                    .font(.headline)

                                Text(contact.status)
                                    .foregroundStyle(.secondary)
                            }
                        }
                    }
                }
                
                .safeAreaInset(edge: .bottom) {
                    HStack {
                        Spacer()

                        FloatingButton(icon:"message.fill") {
                        }
                        .padding()
                    }
                }
                
                .navigationTitle("Contacts")

                .navigationDestination(for: Contact.self) { contact in
                    ChatsView(
                        contact: contact
                    )
                }
            }
        }
}

#Preview {
    ContactsView()
}
