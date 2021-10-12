//
//  BrewingMethodSelectionView.swift
//  Coffee-Helper
//
//  Created by Nate Fuller on 6/14/21.
//

import SwiftUI

struct BrewingMethodSelectionView: View {
    let data = BrewingMethod.allMethods
    
    let columns = [GridItem(.flexible()),
                   GridItem(.flexible())]
    
    var body: some View {
        VStack {
            Text("How will you be brewing your coffee today?")
                .font(.system(.title))
                .fontWeight(.bold)
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(data, id: \.self) { brewingMethod in
                    NavigationLink
                    BrewingMethodCell(method: brewingMethod)
                        .frame(width: 180, height: 200)
                        .background(Color.cellBackground)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                }
            }
            Spacer()
        }
    }
}
