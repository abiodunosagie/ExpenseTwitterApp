//
//  HeaderView.swift
//  ExpenseTwitterApp
//
//  Created by Abiodun Osagie on 25/04/2025.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            HStack {
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Image(.profile)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .foregroundStyle(.purple)
                            .clipShape(Circle())
                    })
                   
                        .frame(width: 50, height: 50)
                    VStack(alignment: .leading) {
                        Text("Hi WuraOla 🫶")
                            .font(.headline)
                        Text("Welcome to Wallet")
                            .font(.headline)
                            .foregroundStyle(.gray)
                    }
                }
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "bell.fill")
                        .foregroundStyle(.gray)
                        .font(.system(size: 24))
                        .overlay(
                            Circle()
                                .fill(.red)
                                .frame(width: 10, height: 10)
                                .offset(x: 6, y: -10)
                        )
                }

            }//: HSTACK
           
            
        }
    }
}

#Preview {
    HeaderView()
}
