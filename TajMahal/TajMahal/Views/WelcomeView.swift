//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI


// Page d'accueil
struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            Image("TajMahal")
    
            VStack(alignment: .leading) {
                        Text("Restaurant Indien")
                            .font(.subheadline)
                            .padding()
                        HStack {
                            Text("Taj Mahal")
                                .font(Font.custom("PlusJakartaSans-Regular", size: 18))
                            Spacer()
                            Image("Logo Gris")
                        }
                        .padding()
                    }
            LineView(imageName: "Horloge",leftText: "Mardi", rightText: "11h30 - 14h30 · 18h30 - 22h00")
            LineView(imageName: "Type de service",leftText: "Type de Service", rightText: "A emporter")
            LineView(imageName: "Localisation",leftText: "12 Avenue de la Brique - 75010 Paris", rightText: "")
            LineView(imageName: "Site",leftText: "www.tajmahal.fr", rightText: "")
            LineView(imageName: "Téléphone",leftText: "06 12 34 56 78", rightText: "")
            Spacer()
            NavigationLink {
                MenuView()
            } label : {
                Text("Menu")
            }
        }
    }
}

#Preview {
    WelcomeView()
}
