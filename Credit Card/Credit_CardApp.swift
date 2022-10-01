//
//  Credit_CardApp.swift
//  Credit Card
//
//  Created by Oncu Can on 1.10.2022.
//

import SwiftUI

@main
struct Credit_CardApp: App {
    var body: some Scene {
        WindowGroup {
            CreditCard<CreditCardFront>(content: { CreditCardFront() })
        }
    }
}
