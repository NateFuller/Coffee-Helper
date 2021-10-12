//
//  BrewingMethodCell.swift
//  Coffee-Helper
//
//  Created by Nate Fuller on 6/14/21.
//

import SwiftUI

struct BrewingMethodCell: View {
    var method: BrewingMethod
    
    var body: some View {
        VStack {
            Text(method.name)
            Spacer()
            Text(method.ratio.stringValue)
                .foregroundColor(.gray)
        }
        .padding()
    }
}
