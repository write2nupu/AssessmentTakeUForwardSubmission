//
//  ChatScreen.swift
//  TakeUForwardAssessment
//
//  Created by Nupur on 27/04/26.
//

import SwiftUI

struct ChatsView: View {

    @State private var newMessage = ""
    @State var messages: [Message]

    init(contact: Contact) {
        self.contact = contact
        _messages = State(
            initialValue: contact.messages
        )
    }
    
    let contact: Contact

    var body: some View {

        VStack(spacing: 0) {

            HStack {

                Circle()
                    .frame(width: 38,height: 38)

                VStack(alignment: .leading){
                    Text(contact.name)
                        .font(.headline)

                    Text("Online")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }

                Spacer()

                Image(systemName:"phone")
                    .padding(.trailing, 5)
                Image(systemName:"video")
            }
            .padding()
            .background(.ultraThinMaterial)

            ScrollView {
                LazyVStack(spacing:12) {
                    ForEach(messages) { message in
                        HStack {

                            if message.isMe {
                                Spacer()
                            }

                            Text(message.text)
                                .padding()
                                .background(
                                   message.isMe ?
                                   Color.blue :
                                   Color.gray.opacity(0.2)
                                )
                                .foregroundStyle(
                                   message.isMe ? .white : .primary
                                )
                                .clipShape(
                                   RoundedRectangle(
                                     cornerRadius:18
                                   )
                                )

                            if !message.isMe {
                                Spacer()
                            }
                        }
                    }
                }
                .padding()
            }

            HStack {
                Image(systemName:"plus")

                TextField(
                  "Message...",
                  text:$newMessage
                )
                .textFieldStyle(.roundedBorder)

                Button {

                    guard !newMessage.trimmingCharacters(
                        in: .whitespacesAndNewlines
                    ).isEmpty else { return }

                    let newMsg = Message(
                        text: newMessage,
                        isMe: true
                    )

                    messages.append(newMsg)

                    newMessage = ""

                } label: {

                    Image(systemName: "paperplane.fill")
                        .font(.title3)
                        .foregroundColor(.white)
                        .frame(width: 44, height: 44)
                        .background(
                            Circle()
                                .fill(.green)
                        )
                }
            }
            .padding()
        }
    }
}

