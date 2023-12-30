//
//  SelectCurrency.swift
//  CurrencyConvertor
//
//  Created by Shoaib Ali on 13/12/23.
//

import SwiftUI

struct SelectCurrency: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var topCurrency: Currency
    @Binding var bottomCurrency: Currency
    

    
    var body: some View {
        ZStack{
            //background image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack{
                // text
                Text("Slect a currency you are starting with: ")
                    .fontWeight(.bold)
                
                
                
                
                // currency icons
                IconGrid(currency: $topCurrency)
             
              
        
                
                // text
                Text("Slect a currency you would like to convert to:")
                    .fontWeight(.bold)
                  
                
                
                // currency icons
                IconGrid(currency:$bottomCurrency)
              
                
                // done button
                Button("Done"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)

                
            }
            .padding()
            .multilineTextAlignment(.center)

            
            
            
            
        }
    }
}


#Preview {
    SelectCurrency(topCurrency: .constant(.silverPiece), bottomCurrency: .constant(.goldPiece))
}
