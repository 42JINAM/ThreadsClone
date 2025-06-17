//
//  DividerView.swift
//  ThreadsClone
//
//  Created by jinam on 6/17/25.
//

import SwiftUI

struct DividerView: View {
    var body: some View {
        Rectangle()
            .fill(Color.colorPalette.secondaryColor.opacity(0.1))
            .frame(height: 1.8)
            .offset(y: 12)
    }
}

#Preview {
    DividerView()
}
