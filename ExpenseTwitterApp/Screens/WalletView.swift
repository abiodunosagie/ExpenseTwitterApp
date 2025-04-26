//
//  ContentView.swift
//  ExpenseTwitterApp
//
//  Created by Abiodun Osagie on 25/04/2025.
//

import SwiftUI

struct WalletView: View {
    var body: some View {
        GeometryReader { geo in
            ZStack(alignment: .bottom) {
                VStack(spacing: 20) {
                    HeaderView()
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 20){
                            Image(.card)
                                .resizable()
                                .scaledToFit()
                            ActionButtonsView()
                            HStack {
                                ExpenseCardView(progress: 0.7, color: .orange)
                                SavingsCardView()
                            }
                            ExploreTab()
                            HStack {
                                Text("Recent Transactions")
                                    .font(.system(size: 20, weight: .semibold))
                                Spacer()
                                Button {
                                    
                                } label: {
                                    Text("See all")
                                        .foregroundStyle(.gray)
                                }
                            }
                            TransactionListView()
                            
                        }
                        
                    }
                    
                }
                .padding()
                .frame(minHeight: geo.size.height, alignment: .top)
                
//                BottomBarView()
//                    .padding(.bottom, 10)
            }
        
        }
    }
}


#Preview {
    WalletView()
}
