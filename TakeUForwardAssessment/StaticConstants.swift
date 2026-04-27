//
//  StaticConstants.swift
//  TakeUForwardAssessment
//
//  Created by Nupur on 27/04/26.
//

import Foundation

let contacts = [

Contact(
 name: "Sarah",
 status: "Online",
 messages: [
   Message(text:"Hey how are you?", isMe:false),
   Message(text:"Doing great!", isMe:true)
 ]
),

Contact(
 name: "Alex",
 status: "Busy",
 messages: [
   Message(text:"UI ready?", isMe:false),
   Message(text:"Sending now", isMe:true)
 ]
)

]
