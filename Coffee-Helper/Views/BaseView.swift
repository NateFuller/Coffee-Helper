//
//  BaseView.swift
//  Coffee-Helper
//
//  Created by Nathan Fuller on 10/13/21.
//

import SwiftUI

struct BaseView<Content: View>: View {
    private let background: Color
    private let content: Content

    public init(background: Color = .primaryBackground, @ViewBuilder content: () -> Content) {
        self.background = background
        self.content = content()
    }

    var body: some View {
        ZStack {
            background.ignoresSafeArea()
            content
        }
    }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView {
            Text("Hello world!")
        }
    }
}
