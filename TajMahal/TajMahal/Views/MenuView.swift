//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI



// Menu sous forme de liste
struct MenuView: View {
    // Référence vers le view model qui permet d'accéder aux tableaux d'entrées et de plats du menu
    let viewModel: ViewModel = ViewModel()
    
    var body: some View {
        ScrollView {
            VStack {
                Text ("Menu")
                    .bold()
                    .font(Font.custom("PlusJakartaSans-Regular", size: 18))
                
            }
            NavigationStack {
                //Introduction des entrées
                Text ("Entrées")
                    .bold()
                    .font(Font.custom("PlusJakartaSans-Regular", size: 16))
                    .frame(width: 300, height: 50, alignment: .leading)
                    .foregroundColor(Color.black)
                
                //Liste des entrées
                ForEach(viewModel.apetizerArray, id: \.name) { apetizer in
                    NavigationLink(destination: DishDetailsView(dish: apetizer)) {
                        LineMenuView(
                            name: apetizer.name,
                            imageName: apetizer.imageName,
                            description: apetizer.description,
                            price: apetizer.price,
                            spiceLevel: apetizer.spiceLevel
                        )
                    }
                }
                
                //Introduction des plats principaux
                Text ("Plats Principaux")
                    .bold()
                    .font(Font.custom("PlusJakartaSans-Regular", size: 16))
                    .frame(width: 300, height: 50, alignment: .leading)
                    .foregroundColor(Color.black)
                //Liste des plats principaux
                ForEach(viewModel.mainCourseArray, id: \.name) { dish in
                    NavigationLink(destination: DishDetailsView(dish: dish)) {
                        LineMenuView(
                            name: dish.name,
                            imageName: dish.imageName,
                            description: dish.description,
                            price: dish.price,
                            spiceLevel: dish.spiceLevel
                        )
                    }
                }
                
                
            }}
        .background(Color(red:0.95, green:0.95, blue:0.95))}
    
    }
    

