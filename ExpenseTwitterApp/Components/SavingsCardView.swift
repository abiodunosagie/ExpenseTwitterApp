//
//  SavingsCardView.swift
//  ExpenseTwitterApp
//
//  Created by Abiodun Osagie on 25/04/2025.
//

import SwiftUI

struct SavingsCardView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Savings")
                .font(.system(size: 20, weight: .semibold))
            CircularProgressBar(
                progress: 0.625,
                color: .blue,
                title: "Saved out of",
                amount: "$10,000",
                target: "$6,250"
            )
                
        }
        .padding()
        .background(Color.white)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray.opacity(0.3), lineWidth: 1)
        )
    }
}


#Preview {
    SavingsCardView()
}
