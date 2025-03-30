//
//  LineView.swift
//  TajMahal
//
//  Created by Sarah Maimoun on 12/11/2024.
//

import SwiftUI


struct LineView: View {
    let imageName : String
    let leftText : String
    let rightText : String
    
    // Présentation affichage de la page d'accueil du restaurant
    var body: some View {
        HStack {
            Image(imageName)
            if leftText.contains("www") {
                           Link(leftText, destination: URL(string:  "https://" + leftText)!)
                    .foregroundColor(.primary)
                
                       }
            else if leftText.filter(\.isNumber).count >= 10 {
                // Lien téléphone
                let telNumber = leftText.filter(\.isNumber)
                if let telURL = URL(string: "tel://\(telNumber)") {
                    Link(leftText, destination: telURL)
                        .foregroundColor(.primary)
                }
            }
            else if leftText.contains("Paris") {
                let encodedAdresse = leftText.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
                if let mapURL = URL(string: "http://maps.apple.com/?q=\(encodedAdresse)") {
                    Link(leftText, destination: mapURL)
                        .foregroundColor(.primary)
                      
                }
            }
            else {
                           Text(leftText)
                       }
            
            Spacer()
            Text(rightText)
        }
        .padding(.bottom, 10)
    }
}



#Preview {
    LineView(imageName: "Horloge", leftText: "Mardi", rightText: "")
}
