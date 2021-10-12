//
//  ContentView.swift
//  Coffee-Helper
//
//  Created by Nate Fuller on 6/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            BrewingMethodSelectionView()
                .padding()
                .navigationBarHidden(true)
                .navigationBarTitle("Brewing Method")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
