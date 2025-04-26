//
//  MainWalletView.swift
//  ExpenseTwitterApp
//
//  Created by Abiodun Osagie on 25/04/2025.
//

import SwiftUI

struct MainWalletView: View {
    var body: some View {
        ZStack {
            WalletBackgroundShape()
                .fill(Color.walletGreen)
                .frame(height: 250)
                .cornerRadius(25)
                .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5)
            
            VStack(spacing: 0) {
                ZStack {
//                    WalletCardView(currency: "Pounds", color: Color.green.opacity(0.7), offsetY: 30)
//                    WalletCardView(currency: "Euro", color: Color.orange.opacity(0.8), offsetY: 15)
//                    WalletCardView(currency: "Dollar", color: Color.red.opacity(0.9), offsetY: 0)
                }
                .padding(.top, 40)
                
                Spacer()
                
                VStack(spacing: 10) {
                    Text("Total Balance")
                        .foregroundColor(.white)
                        .font(.subheadline)
                    
                    Text("******")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                    
                    Button(action: {
                        // Toggle balance view
                    }) {
                        Text("Show balance")
                            .padding(.horizontal, 20)
                            .padding(.vertical, 8)
                            .background(Color.white.opacity(0.2))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .font(.footnote)
                    }
                }
                .padding(.bottom, 20)
            }
            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
}


#Preview {
    MainWalletView()
}
