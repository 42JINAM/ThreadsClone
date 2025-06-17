//
//  ContentView.swift
//  ThreadsClone
//
//  Created by jinam on 6/17/25.
//

import SwiftUI

struct ContentView: View {
    @State private var currentPageSelection: PageSelection = .forYou
    @Namespace private var pageSelectionNameSpace
    var body: some View {
        ZStack {
            Color.colorPalette.backgroundColor.ignoresSafeArea()
            ScrollView {
                VStack {
                    threadIconLogo
                    pageSelectionSection
                        .padding(.bottom, 28)
                    Spacer()
                }
                .padding(.top)
            }
        }
    }
}

extension ContentView {
    private var threadIconLogo: some View {
        Text("Logo")
    }
    private var pageSelectionSection: some View {
        HStack(spacing: 0) {
            ForEach(PageSelection.allCases, id: \.self) { value in
                ZStack(alignment: .bottom) {
                    DividerView()
                    if value == currentPageSelection {
                       selectionIndicator
                    }
                    configurePageSelectionButton(buttonPressed: value)
                }
            }
        }
        .padding(.top)
        .font(.headline)
    }
    private var selectionIndicator: some View {
        Rectangle()
            .fill(Color.colorPalette.accentColor)
            .matchedGeometryEffect(id: PageSelection.pageSelectionID, in: pageSelectionNameSpace)
            .frame(height: 2)
            .offset(y: 12)
    }
    private func configurePageSelectionButton(buttonPressed: PageSelection) -> some View {
        Button {
            withAnimation(.linear(duration: 0.2)) {
                currentPageSelection = buttonPressed
            }
        } label: {
            Text(buttonPressed.title)
                .contentShape(Rectangle())
                .foregroundStyle(
                   currentPageSelection == buttonPressed
                   ? Color.colorPalette.accentColor
                   : Color.colorPalette.secondaryColor
                )
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    ContentView()
}
