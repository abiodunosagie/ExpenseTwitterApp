//
//  BottomBarView.swift
//  ExpenseTwitterApp
//
//  Created by Abiodun Osagie on 26/04/2025.
//

import SwiftUI

enum Tab {
    case home
    case wallet
    case crypto
    case settings
}


struct BottomBarView: View {
    var body: some View {
        HStack(spacing: 40) {
            barIcon(systemName: "house.fill")
            bottomBarIcon(systemName: "wallet.bifold")
            bottomBarIcon(systemName: "bitcoinsign.bank.building")
            bottomBarIcon(systemName: "gearshape.fill")
        }
        .padding()
        .background(Color.white)
        .clipShape(Capsule()) // pill shape
        .shadow(radius: 5)
        .padding(.horizontal, 20)
    }
    
    func barIcon(systemName: String) -> some View {
        Image(systemName: systemName)
            .foregroundColor(.black)
            .frame(width: 40, height: 40)
            .background(Color.gray.opacity(0.2))
            .clipShape(Circle())
    }
    
    func bottomBarIcon(systemName: String) -> some View {
        Image(systemName: systemName)
            .foregroundStyle(.gray)
    }
}

#Preview {
    BottomBarView()
}

