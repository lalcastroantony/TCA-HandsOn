//
//  TCA_handsOnApp.swift
//  TCA-handsOn
//
//  Created by Lal Castro on 15/11/24.
//

import SwiftUI
import ComposableArchitecture

@main
struct TCA_handsOnApp: App {
    let store = Store(initialState: ContactsFeature.State()) {
        ContactsFeature()
            ._printChanges()
    }
    var body: some Scene {
        WindowGroup {
            ContactsView(store: store)
        }
    }
}
