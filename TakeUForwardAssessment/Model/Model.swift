//
//  Model.swift
//  TakeUForwardAssessment
//
//  Created by Nupur on 27/04/26.
//

import Foundation
import SwiftData
internal import Combine

@Model
class Contact {

    var name: String
    var status: String
    var messages: [Message]

    init(
      name: String,
      status: String,
      messages: [Message] = []
    ) {
       self.name = name
       self.status = status
       self.messages = messages
    }
}

@Model
class Message {

    var text: String
    var isMe: Bool
    var timestamp: Date

    init(
      text: String,
      isMe: Bool,
      timestamp: Date = .now
    ) {
        self.text = text
        self.isMe = isMe
        self.timestamp = timestamp
    }
}
