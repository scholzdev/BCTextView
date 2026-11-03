//
//  BCTextViewExampleApp.swift
//  BCTextViewExample
//
//  Created by Khan Winter on 1/9/25.
//

import SwiftUI

@main
struct BCTextViewExampleApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: BCTextViewExampleDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
