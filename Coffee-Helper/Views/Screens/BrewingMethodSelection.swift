//
//  BrewingMethodSelection.swift
//  Coffee-Helper
//
//  Created by Nate Fuller on 6/14/21.
//

import SwiftUI

struct BrewingMethodSelection: View {
    let data = BrewingMethod.allMethods
    
    let columns = [GridItem(.flexible()),
                   GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            BaseView {
                VStack {
                    HStack {
                        Text("How will you be brewing your coffee today?")
                            .font(.subheadline)
                        Spacer()
                    }
                    LazyVGrid(columns: columns, alignment: .center, spacing: 10) {
                        ForEach(data, id: \.self) { brewingMethod in
                            NavigationLink(destination: CoffeeInput()) {
                                BrewingMethodCell(method: brewingMethod)
                                    .frame(height: 200)
                            }.buttonStyle(DefaultButtonStyle())
                        }
                    }
                    Spacer()
                }
                .padding()
                .navigationTitle("Brewing Method")
            }
        }
    }
}

struct BrewingMethodSelectionPreviews: PreviewProvider {
    static var previews: some View {
        BrewingMethodSelection()
    }
}
