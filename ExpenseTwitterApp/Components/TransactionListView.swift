//
//  TransactionListView.swift
//  ExpenseTwitterApp
//
//  Created by Abiodun Osagie on 26/04/2025.
//

import SwiftUI

struct TransactionListView: View {
    let transactions: [Transaction] = [
        Transaction(title: "Figma/Salary", amount: 8000, isIncome: true),
        Transaction(title: "Coffee Shop", amount: 4.50, isIncome: false),
        Transaction(title: "App Store Revenue", amount: 1200.75, isIncome: true),
        Transaction(title: "Netflix Subscription", amount: 13.99, isIncome: false),
        Transaction(title: "Freelance Design", amount: 350.00, isIncome: true),
        Transaction(title: "Spotify", amount: 9.99, isIncome: false),
        Transaction(title: "Grocery Store", amount: 76.45, isIncome: false),
        Transaction(title: "YouTube Ad Revenue", amount: 500.00, isIncome: true),
        Transaction(title: "Gym Membership", amount: 29.99, isIncome: false),
        Transaction(title: "Investment Return", amount: 1050.25, isIncome: true),
        Transaction(title: "Takeout Dinner", amount: 18.75, isIncome: false),
        Transaction(title: "Online Course Sale", amount: 200.00, isIncome: true),
        Transaction(title: "Electricity Bill", amount: 60.10, isIncome: false),
        Transaction(title: "Selling Old Laptop", amount: 650.00, isIncome: true),
        Transaction(title: "Uber Ride", amount: 14.30, isIncome: false),
        Transaction(title: "Monthly Bonus", amount: 450.00, isIncome: true),
        Transaction(title: "Book Purchase", amount: 24.99, isIncome: false),
        Transaction(title: "Crypto Gain", amount: 780.33, isIncome: true),
        Transaction(title: "Mobile Data Plan", amount: 19.99, isIncome: false),
        Transaction(title: "Side Hustle Income", amount: 300.00, isIncome: true)
    ]

    
    var body: some View {
        VStack(alignment: .leading) {
            
            ForEach(transactions) { transaction in
                Button {
                    
                } label: {
                    HStack {
                        ZStack {
                            Image(.figma)
                                .resizable()
                                .scaledToFit()
                                .padding(.horizontal, 5)
                                .background(.white)
                                .clipShape(Circle())
                                .frame(width: 50, height: 50)
                                .overlay(
                                    Circle()
                                        .stroke(.gray.opacity(0.2), lineWidth: 8)
                                )
                            Image(systemName: transaction.isIncome ? "arrow.up.right.circle.fill" : "arrow.down.right.circle.fill")
                                                    .foregroundColor(transaction.isIncome ? .green : .red)
                                                    .offset(x:10, y: 13)
                        }
                        
                        
                        Text("From ")
                            .foregroundStyle(.gray)
                        + Text(transaction.title)
                            .font(.headline)
                        
                        
                        Spacer()

                        
                        VStack(alignment: .trailing) {
                            Text(transaction.isIncome ? "+$\(transaction.amount, specifier: "%.2f")" : "-$\(transaction.amount, specifier: "%.2f")")
                                .foregroundColor(transaction.isIncome ? .green : .red)
                                .font(.headline)
                            Text("USD")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.vertical, 4)
                    .padding(.horizontal, 5)
                }

               
            }
        }
    }
}

#Preview {
    TransactionListView()
}
