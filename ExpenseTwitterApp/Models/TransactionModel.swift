//
//  TransactionModel.swift
//  ExpenseTwitterApp
//
//  Created by Abiodun Osagie on 25/04/2025.
//

import Foundation

struct Transaction: Identifiable {
    let id = UUID()
    let title: String
    let amount: Double
    let isIncome: Bool
}
