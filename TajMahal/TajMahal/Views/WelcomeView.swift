//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            Image("TajMahal")
            Spacer()
            NavigationLink {
                // Vue liste du menu
            } label : {
                Text("Menu")
            }
        }
    }
}

#Preview {
    WelcomeView()
}
