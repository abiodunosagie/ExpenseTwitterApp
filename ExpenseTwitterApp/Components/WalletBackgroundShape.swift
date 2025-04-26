//
//  WalletBackgroundShape.swift
//  ExpenseTwitterApp
//
//  Created by Abiodun Osagie on 25/04/2025.
//

import SwiftUI

struct WalletBackgroundShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // 👇 Start with the wave on top
                path.move(to: CGPoint(x: 0, y: 0))
                
                path.addQuadCurve(
                    to: CGPoint(x: rect.width, y: 0),
                    control: CGPoint(x: rect.width / 2, y: -rect.height * 0.25) // wave dip up
                )
                
                // 👇 Then go down the sides and close the bottom
                path.addLine(to: CGPoint(x: rect.width, y: rect.height))
                path.addLine(to: CGPoint(x: 0, y: rect.height))
                path.closeSubpath()
        
        return path
    }
}


#Preview {
    WalletBackgroundShape()
}
