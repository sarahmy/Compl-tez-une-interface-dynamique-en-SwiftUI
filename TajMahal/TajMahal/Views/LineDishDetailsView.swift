//
//  LineDishDetailsView.swift
//  TajMahal
//
//  Created by Sarah Maimoun on 21/03/2025.
//

import SwiftUI

//Organisation de l'affichage du détail des plats sélectionnés
struct LineDishDetailsView: View {
    let name : String
    let imageName : String
    let allergens : String
    let ingredients : String
    let spiceLevel : SpiceLevel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(name)
                    .bold()
                    .foregroundColor(.black)
                    .font(Font.custom("PlusJakartaSans-Regular", size: 25))
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack (alignment: .leading, spacing: 4){
                    ZStack(alignment: .topTrailing) {
                        Image(imageName)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(20)
                            .clipped()
                        
                        Image(spiceLevel.imageSpiceName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 25)
                            .padding(.trailing, 16)
                            .padding(.top, 12)
                    }}
                .padding(.horizontal)
                VStack(alignment: .leading, spacing: 16) {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Allergènes:")
                            .font(.headline)
                            .foregroundColor(.gray)
                            .fontWeight(.bold)
                            .padding(.top, 4)
                        Text(allergens)
                            .font(.body)
                            .foregroundColor(.black)
                    }
                    
                    Divider()
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Ingrédients:")
                            .font(.headline)
                            .foregroundColor(.gray)
                            .fontWeight(.bold)
                            .padding(.top, 4)
                        Text(ingredients)
                            .font(.body)
                            .foregroundColor(.black)
                    }
                    
                }
                .padding()
            }
            .frame(maxWidth: .infinity, alignment: .top)}
    }
    
        
}


#Preview {
    LineDishDetailsView(name: "Rogan Josh", imageName: "Rogan Josh", allergens: "Ail, oignon", ingredients: "Agneau, oignons, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, huile, coriandre fraîche", spiceLevel: .hot)
}
