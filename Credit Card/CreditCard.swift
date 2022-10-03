//
//  ContentView.swift
//  Credit Card
//
//  Created by Oncu Can on 1.10.2022.
//

import SwiftUI

struct CreditCard<Content>: View where Content: View {
    var content: () -> Content
    
    var body: some View {
        content()
    }
}

struct CreditCardFront: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(.white)
                Spacer()
                Text("VISA")
                    .foregroundColor(.white)
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                
            }
            Spacer()
            
            Text("**** **** **** 2964")
                .font(.system(size: 32))
                .foregroundColor(.white)
            
            Spacer()
            
            HStack {
                VStack(alignment: .leading) {
                    Text("CARD HOLDER")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    
                    Text("ÖNCÜ CAN")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                }
                Spacer()
                
                VStack {
                    Text("EXPIRES")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    
                    Text("04/08")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                }
            }
        }
                .frame(width: 300, height: 200)
                .padding()
                .background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.brown]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(10)
    }
}

struct CreditCardBack: View {
    var body: some View {
        VStack {
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 20).padding([.top])
            Spacer()
            
            HStack {
                Text("123")
                    .foregroundColor(.black)
                    .rotation3DEffect(.degrees(180),
                                      axis: (x: 0.0, y: 1.0, z: 0.0))
                    .padding(5)
                    .frame(width: 100, height: 20)
                    .background(.white)
                Spacer()
            }.padding()
        }
                .frame(width: 300, height: 200)
                .background(LinearGradient(gradient: Gradient(colors: [Color.brown, Color.yellow]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(10)
    }
}

struct CreditCardView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCard<CreditCardBack>(content: { CreditCardBack() })
    }
}
