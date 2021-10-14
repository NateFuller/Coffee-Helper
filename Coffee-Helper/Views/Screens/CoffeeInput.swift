//
//  CoffeeInput.swift
//  Coffee-Helper
//
//  Created by Nathan Fuller on 10/13/21.
//

import SwiftUI

enum UnitOfMass {
    case gram
    case ounce
}

struct CoffeeInput: View {
    @ObservedObject var textBindingManager = TextBindingManager(limit: 5)
    @State var selectedUnits = UnitOfMass.gram

    init() {

    }

    var body: some View {
        NavigationView {
            BaseView {
                VStack {
                    HStack {
                        HStack {
                            TextField("30", text: $textBindingManager.text)
                                .fixedSize()
                                .font(.system(size: 64))
                                .keyboardType(.numberPad)
                                .multilineTextAlignment(.trailing)
                                .padding()
                                .background(Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                            Picker("Unit", selection: $selectedUnits) {
                                Text("g").tag(UnitOfMass.gram)
                                Text("oz").tag(UnitOfMass.ounce)
                            }
                            .pickerStyle(.segmented)
                            .fixedSize()
                        }
                        .padding()
                    }
                    .padding()
                    Spacer()
                    Button(action: {}) {
                        Text("Continue")
                            .foregroundColor(.buttonTextPrimary)
                            .padding()
                            .background(Color.buttonBackgroundPrimary)
                            .cornerRadius(8)
                    }
                }
            }
            .navigationTitle("What's today's dose of coffee?")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

class TextBindingManager: ObservableObject {
    @Published var text = "" {
        didSet {
            if text.count > characterLimit && oldValue.count <= characterLimit {
                text = oldValue
            }
        }
    }

    let characterLimit: Int

    init(limit: Int = 3) {
        characterLimit = limit
    }
}

struct CoffeeInput_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeInput()
    }
}
