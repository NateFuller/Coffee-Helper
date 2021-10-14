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
        //        Button(action: {}) {
        ZStack {
            Color.cellBackground.clipShape(RoundedRectangle(cornerRadius: 10))
            VStack {
                Text(method.name)
                Text(method.ratio.stringValue)
                    .foregroundColor(.gray)
            }
        }
        //        }
    }
}

struct BrewingMethodCell_Previews: PreviewProvider {
    static var previews: some View {
        BaseView {
            BrewingMethodCell(method: BrewingMethod.FrenchPress).frame(width: 180, height: 200)
        }
    }
}
