//
//  ContentView.swift
//  CurrencyConvertor
//
//  Created by Shoaib Ali on 27/11/23.
//

import SwiftUI

struct ContentView: View {
    
    
   @State var showExchangeInfo = false
   @State var showSelectCurrency=false
   @State var leftAmount = ""
   @State var rightAmount = ""
   @State var leftCurrency : Currency = .silverPiece
   @State var rightCurrency : Currency = .goldPiece
    
    
    
    
    var body: some View {
        ZStack{
            // Background Image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                //Pony Image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                // Currency
                
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                //Conversion section
                HStack{
                    //left conversion
                    VStack{
                        //Currency
                        HStack{
                            //Currency Image
                            Image(leftCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            //Currency text
                            Text(leftCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        .padding(.bottom,-5)
                        .onTapGesture {
                            showSelectCurrency.toggle()
                        }
                        
                        //TextField
                        TextField("Amount",text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                    }
                    
                    //Equal Sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .symbolEffect(.pulse)
                    
                    //right conversion
                    VStack{
                        //Currency
                        HStack{
                            //Currency Image
                            Text(rightCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            
                            //Currency Image
                            Image(rightCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            
                        }
                        .padding(.bottom,-5)
                        .onTapGesture {
                            showSelectCurrency.toggle()
                        }
                        
                        //TextField
                        TextField("Amount" ,text:$rightAmount)
                            .textFieldStyle(.roundedBorder)
                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.capsule )
                
                
                Spacer()
                
                //Info Button
                HStack {
                    Spacer()
                    
                    Button{
                        showExchangeInfo.toggle()
                    }label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                   }
                    .padding(.trailing)
                    .sheet(isPresented:$showExchangeInfo){
                        ExchangeInfo()
                    }
                    .sheet(isPresented:$showSelectCurrency){
                        SelectCurrency(topCurrency: $leftCurrency,bottomCurrency: $rightCurrency)
                    }
                }
                
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}
