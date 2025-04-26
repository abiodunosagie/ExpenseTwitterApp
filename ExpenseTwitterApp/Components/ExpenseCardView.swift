//
//  ExpenseCardView.swift
//  ExpenseTwitterApp
//
//  Created by Abiodun Osagie on 25/04/2025.
//

import SwiftUI

struct ExpenseCardView: View {
    var progress: Double
    var color: Color
    var body: some View {
        VStack(alignment: .leading) {
            Text("Apr ")
                .font(.subheadline)
                .foregroundColor(.black) +
            Text("Expenses")
                .font(.subheadline)
                .foregroundColor(.gray)
            Spacer()
                .frame(height: 10)
            
            Text("$3,800")
                .font(.title2)
                .fontWeight(.bold)
            Spacer()
                .frame(height: 10)
            
            Text("Spent out of $6,000 ")
                .font(.caption)
                .foregroundColor(.gray) +
            Text("$6,000")
                .font(.caption)
                .foregroundColor(.black)
            Spacer()
            .frame(height: 10)
            
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 6)
                        .frame(height: 12)
                        .foregroundColor(Color.gray.opacity(0.2))
                    
                    RoundedRectangle(cornerRadius: 6)
                        .frame(width: CGFloat(progress) * geometry.size.width, height: 12)
                        .foregroundColor(color)
                        .animation(.easeInOut, value: progress)
                }
            }
            .frame(height: 20)
        }
        .padding()
        .padding(.vertical, 17)
        .background(Color.white)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray.opacity(0.3), lineWidth: 1)
        )
    }
}


#Preview {
    ExpenseCardView(progress: 0.6, color: .orange)
}
