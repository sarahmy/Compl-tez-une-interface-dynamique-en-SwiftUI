//
//  Model.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import Foundation

// Cette enumération répertorie 3 niveaux de piment
enum SpiceLevel {
    case light
    case medium
    case hot
    
    var imageSpiceName: String {
        switch self {
            case .light:
            return "Piquant Doux"
        case .medium:
            return "Piquant Medium"
        case .hot:
            return "Piquant Fort"
        }
}

}
// Représente l'objet "plat", qui figure sur la carte du menu
struct Dish {
    var name: String
    var description: String
    var allergens: String
    var ingredients: String
    var spiceLevel: SpiceLevel
    var price: String
    var imageName: String
}
