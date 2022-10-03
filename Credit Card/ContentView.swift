//
//  ContentView.swift
//  Credit Card
//
//  Created by Oncu Can on 1.10.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var degrees: Double = 0
    @State private var flipped: Bool = false

    @State private var cardNumber: String = ""
    @State private var name: String = ""
    @State private var expires: String = ""
    @State private var cvv: String = ""
    
    var body: some View {

            VStack {
                CreditCard {
                    VStack {
                        Group {
                            if flipped {
                                CreditCardBack(cvv: cvv)
                            } else {
                                CreditCardFront(cardNumber: cardNumber, name: name, expires: expires)
                            }
                        }
                    }.rotation3DEffect(
                        .degrees(degrees),
                        axis: (x: 0.0, y: 1.0, z: 0.0)
                    )
                } .onTapGesture {
                    withAnimation {
                        degrees += 180
                        flipped.toggle()
                        
                    }
            }
                TextField("Card Number", text: $cardNumber)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding([.top, .leading, .trailing])
                
                TextField("Name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding([.top, .leading, .trailing])
                
                TextField("Expiration", text: $expires)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding([.top, .leading, .trailing])
                
                TextField("CVV", text: $cvv) { (editingChanged) in
                    withAnimation{
                        degrees += 180
                        flipped.toggle()
                    }
                } onCommit: {}
                
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding([.top, .leading, .trailing])
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
