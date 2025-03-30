//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI


// Page d'accueil : informations principales sur le restaurant (horaires, adresse, site internet, numéro téléphone)

struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image("TajMahal")
                    .resizable()
                    .scaledToFit()
                    .clipped()
                    .cornerRadius(20)
                  
                Spacer()
                HStack() {
                    VStack(alignment: .leading) {
                        Text("Restaurant Indien")
                            .font(.subheadline)
                        
                        Text("Taj Mahal")
                            .font(Font.custom("PlusJakartaSans-Regular", size: 18))
                            .bold()
                    }
                    Spacer()
                    Image("Logo Gris")
                }
                
                //Informations générales sur le restaurant
                Spacer()
                LineView(imageName: "Horloge",leftText: "Mardi", rightText: "11h30 - 14h30 · 18h30 - 22h00")
                LineView(imageName: "Type de service",leftText: "Type de Service", rightText: "A emporter")
                LineView(imageName: "Localisation",leftText: "12 Avenue de la Brique - 75010 Paris", rightText: "")
                LineView(imageName: "Site",leftText: "www.tajmahal.fr", rightText: "")
                LineView(imageName: "Téléphone",leftText: "06 12 34 56 78", rightText: "")
                
            }
            .padding()
            
            // Button d'accès au menu
            NavigationLink {
                MenuView()
            } label : {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 335, height: 40)
                        .foregroundColor(Color("CustomRed"))
                    Text("Accéder au menu")
                        .bold()
                        .font(Font.custom("PlusJakartaSans-Regular", size: 16))
                        .foregroundStyle(.white)
                }
            } }  }}
        
        #Preview {
            WelcomeView()
        }
