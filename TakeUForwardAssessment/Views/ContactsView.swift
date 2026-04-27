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
    @EnvironmentObject var store: ChatStore
    
    var filteredContacts: [Contact] {
        searchText.isEmpty
        ? store.contacts
        : store.contacts.filter {
            $0.name.localizedCaseInsensitiveContains(searchText)
        }
    }
    
    var body: some View {
        
        ZStack {
            
            LinearGradient(
                colors: [
                    Color.green.opacity(0.15),
                    Color.blue.opacity(0.08),
                    Color.white
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            NavigationStack (path: $path) {
                
                List(filteredContacts) { contact in
                    
                    NavigationLink(value: contact) {
                        
                        HStack(spacing:14) {
                            
                            Circle()
                                .fill(.gray.opacity(0.2))
                                .frame(width:50,height:50)
                                .overlay(
                                    Image(systemName: "person.fill")
                                        .font(.title2)
                                        .foregroundStyle(.gray)
                                )
                            
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
                .searchable(
                    text: $searchText,
                    prompt: "Search contacts"
                )
                
                .navigationDestination(for: Contact.self) { contact in
                    ChatsView(
                        contact: contact
                    )
                }
            }
        }
    }
}
