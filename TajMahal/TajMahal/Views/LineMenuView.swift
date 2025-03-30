//
//  Untitled 2.swift
//  TajMahal
//
//  Created by Sarah Maimoun on 13/03/2025.
//
import SwiftUI

//Liste des entrées et plats principaux du restaurant Taj Mahal
struct LineMenuView: View {

    let name : String
    let imageName : String
    let description : String
    let price : String
    let spiceLevel : SpiceLevel
 
    var grayColor: Color { Color(red: 102/255, green: 102/255, blue: 102/255) }
    
    //Affichage du visuel de chaque plat
    var body: some View {
        NavigationStack {
            ZStack {
                 HStack {
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 112)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .clipped()
                        .padding(.leading, 10)
                    Spacer()
                    VStack(alignment: .leading) {
                        Text(name)
                            .font(.headline)
                            .foregroundColor(grayColor)
                        Spacer()
                        Text(description)
                          .font(.caption)
                          .multilineTextAlignment(.leading)
                         .foregroundColor(grayColor)
                            .padding(.top, 5)
                        HStack{
                            Text(price)
                                .font(Font.custom("PlusJakartaSans-Regular", size: 13))
                                .bold()
                            Spacer()
                            Image(spiceLevel.imageSpiceName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                                }
                    }
                    
                }
                .padding(.vertical, 10)
                  .padding(.trailing, 10)
              }
              .background(Color.white)
              .clipShape(RoundedRectangle(cornerRadius: 15))
              .shadow(radius: 3)
              .padding(.horizontal, 10)
            
        }
       
        
    }
}
