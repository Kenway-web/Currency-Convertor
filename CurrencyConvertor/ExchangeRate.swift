//
//  ExchangeRate.swift
//  CurrencyConvertor
//
//  Created by Shoaib Ali on 03/12/23.
//

import SwiftUI

struct ExchangeRate: View {
    let leftImage:ImageResource
    let text:String
    let rightImage:ImageResource
    
    var body: some View {
        HStack{
            // left currency image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            // Exchange rate text
            Text(text)
            
            // right currency Image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height:33)
        }
    }
}

#Preview {
    ExchangeRate(leftImage: .silverpiece, 
                 text: "1 Silver Piece = 4 Silver Pennies",
                 rightImage: .silverpenny)
}
