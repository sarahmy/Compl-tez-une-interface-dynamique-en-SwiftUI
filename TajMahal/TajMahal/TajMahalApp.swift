//
//  TajMahalApp.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

//Police par défaut PlusJakartaSans-Regular.ttf taille : 12
extension Font {
    static func defaultFont(size: CGFloat = 12) -> Font {
        return .custom("PlusJakartaSans_Regular", size: size)
    }
}

@main
struct TajMahalApp: App {
    var body: some Scene {
        WindowGroup {
            WelcomeView()
                .environment(\.font, Font.defaultFont())
        }
    }
}
