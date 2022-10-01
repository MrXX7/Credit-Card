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
        VStack {
            Text("FRONT")
                .foregroundColor(.white)
        }
                .frame(width: 300, height: 200)
                .background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.brown]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(10)
    }
}

struct CreditCardBack: View {
    var body: some View {
        VStack {
            Text("BACK")
                .foregroundColor(.white)
        }
                .frame(width: 300, height: 200)
                .background(LinearGradient(gradient: Gradient(colors: [Color.gray, Color.brown]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(10)
    }
}

struct CreditCardView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCard<CreditCardFront>(content: { CreditCardFront() })
    }
}
