//
//  CircularProgressBar.swift
//  ExpenseTwitterApp
//
//  Created by Abiodun Osagie on 25/04/2025.
//

import SwiftUI

import SwiftUI

struct CircularProgressBar: View {
    var progress: Double // 0.0 to 1.0
    var color: Color
    var title: String
    var amount: String
    var target: String
    
    var body: some View {
        VStack{
            ZStack {
                // Background semi-circle
                Circle()
                    .trim(from: 0.0, to: 0.5)
                    .stroke(
                        Color.gray.opacity(0.2),
                        style: StrokeStyle(lineWidth: 10, lineCap: .round)
                    )
                    .rotationEffect(.degrees(180))
                
                // Foreground progress
                Circle()
                    .trim(from: 0.0, to: progress * 0.5)
                    .stroke(color, style: StrokeStyle(lineWidth: 10, lineCap: .round))
                    .rotationEffect(.degrees(180))
                
                Text("\(target)")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.primary)
                    .padding(.top, 8)
            }
            .frame(width: 160, height: 80) // increased size
            
            VStack(spacing: 2) {
                Text(title)
                    .font(.caption)
                    .foregroundColor(.gray)
                Text(amount)
                    .font(.subheadline)
                    .bold()
            }
        }
    }
}


#Preview {
    CircularProgressBar(
        progress: 0.6,
        color: .blue,
        title: "Saved out of",
        amount: "$20",
        target: "$6,250"
    )
}

