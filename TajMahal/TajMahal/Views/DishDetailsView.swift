//
//  DishDetailsView.swift
//  TajMahal
//
//  Created by Sarah Maimoun on 21/03/2025.
//

import SwiftUI

//Affichage du détail de chaque plat : photo du plat, niveau de piquant, liste des allergènes et liste des ingrédients
    struct DishDetailsView: View {
        var dish: Dish

        var body: some View {
            LineDishDetailsView(
                name: dish.name,
                imageName: dish.imageName,
                allergens: dish.allergens,
                ingredients: dish.ingredients,
                spiceLevel: dish.spiceLevel
            )
            .navigationTitle(dish.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }

