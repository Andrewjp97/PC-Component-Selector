//
//  ComponentSelectionView.swift
//  PC Component Selector
//
//  Created by Andrew Paterson on 7/14/24.
//

import SwiftUI

struct ComponentSelectionView: View {
    var body: some View {
      NavigationStack {
        List {
          NavigationLink("RAM", destination: RAMSelectionView())
          NavigationLink("Motherboard", destination: MotherboardSelectionView())
          NavigationLink("CPU", destination: CPUSelectionView())
          NavigationLink("GPU", destination: GPUSelectionView())
        }
        .navigationTitle("PC Components")
      }
    }
}

#Preview {
    ComponentSelectionView()
}
