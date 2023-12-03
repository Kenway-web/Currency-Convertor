//
//  ContentView.swift
//  CurrencyConvertor
//
//  Created by Shoaib Ali on 27/11/23.
//

import SwiftUI

struct ContentView: View {
    
    
   @State var showExchangeInfo = false
   @State var leftAmount = ""
   @State var rightAmount = ""
    
    
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
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            //Currency text
                            Text("SilverPiece")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        .padding(.bottom,-5)
                        
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
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            
                            //Currency Image
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            
                        }
                        .padding(.bottom,-5)
                        
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
                }
                
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}
