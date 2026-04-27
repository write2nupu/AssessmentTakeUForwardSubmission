//
//  FloatingButton.swift
//  TakeUForwardAssessment
//
//  Created by Nupur on 27/04/26.
//

import SwiftUI

struct FloatingButton: View {

    var icon: String = "plus"
    var action: () -> Void

    var body: some View {

        Button(action: action) {
            Image(systemName: icon)
                .font(.title2)
                .foregroundColor(.white)
                .frame(width: 58, height: 58)
                .background(
                    Circle()
                        .fill(.green)
                        .shadow(radius: 6)
                )
        }
    }
}
