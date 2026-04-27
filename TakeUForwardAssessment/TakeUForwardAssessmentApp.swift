//
//  TakeUForwardAssessmentApp.swift
//  TakeUForwardAssessment
//
//  Created by Nupur on 27/04/26.
//

import SwiftUI
import SwiftData

@main
struct TakeUForwardAssessmentApp: App {
    @StateObject var store = ChatStore()
    var body: some Scene {
        WindowGroup {
            ContactsView()
                .environmentObject(store)
        }
    }
}
