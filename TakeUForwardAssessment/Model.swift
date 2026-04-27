//
//  Model.swift
//  TakeUForwardAssessment
//
//  Created by Nupur on 27/04/26.
//

import Foundation

struct Contact: Identifiable, Hashable{
    let id = UUID()
    let name: String
    let status: String
    let messages: [Message]

}

struct Message: Identifiable, Hashable {
    let id = UUID()
    let text: String
    let isMe: Bool
}
