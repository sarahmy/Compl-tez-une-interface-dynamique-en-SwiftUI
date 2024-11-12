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
    
    var body: some View {
        HStack {
            Image(imageName)
            Text(leftText)
            Spacer()
            Text(rightText)
            
        }
        .padding()
    }
}

#Preview {
    LineView(imageName: "Horloge", leftText: "Mardi", rightText: "")
}
