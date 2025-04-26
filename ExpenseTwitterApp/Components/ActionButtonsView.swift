//
//  ActionButtonsView.swift
//  ExpenseTwitterApp
//
//  Created by Abiodun Osagie on 25/04/2025.
//

import SwiftUI

struct ActionButtonsView: View {
    var body: some View {
        HStack(spacing: 16) {
            Button {
                
            } label: {
                HStack {
                    Image(systemName: "arrow.up.right")
                    Text("Transfer")
                        
                }
                .foregroundStyle(.black)
                .frame(maxWidth: .infinity)
                .padding()
                .background(.gray.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
            Button {
                
            } label: {
                HStack {
                    Image(systemName: "plus")
                    Text("Add money")
                        
                }
                .foregroundStyle(.black)
                .frame(maxWidth: .infinity)
                .padding()
                .background(.gray.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }

        }
    }
}

#Preview {
    ActionButtonsView()
}
