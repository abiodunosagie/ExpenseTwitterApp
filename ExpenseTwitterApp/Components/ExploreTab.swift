//
//  ExploreTab.swift
//  ExpenseTwitterApp
//
//  Created by Abiodun Osagie on 26/04/2025.
//

import SwiftUI

struct ExploreTab: View {
    var body: some View {
        Button {
            
        } label: {
            HStack {
                Text("Explore spend and save")
                Image(systemName: "arrow.right")
            }
            .foregroundStyle(.gray)
            .frame(maxWidth: .infinity)
            .padding()
            .background(.gray.opacity(0.2))
            .clipShape(RoundedRectangle(cornerRadius: 50))
        }

    }
}

#Preview {
    ExploreTab()
}
