//
//  StaticConstants.swift
//  TakeUForwardAssessment
//
//  Created by Nupur on 27/04/26.
//
import SwiftUI
import SwiftData
internal import Combine

class ChatStore: ObservableObject {

 @Published var contacts: [Contact] = [

   Contact(
     name:"Sarah",
     status:"Online",
     messages: [
       Message(
         text:"Hey Sarah here",
         isMe:false
       )
     ]
   ),

   Contact(
     name:"Alex",
     status:"Busy",
     messages: [
       Message(
         text:"Yo from Alex",
         isMe:false
       )
     ]
   ),

   Contact(
     name:"Emma",
     status:"Available",
     messages: [
       Message(
         text:"Hello from Emma",
         isMe:false
       )
     ]
   )

 ]
}
