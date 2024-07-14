//
//  MotherboardDetailView.swift
//  PC Component Selector
//
//  Created by Andrew Paterson on 7/14/24.
//

import SwiftUI

struct MotherboardDetailView: View {
  var component: Motherboard
    var body: some View {
      ScrollView {
        VStack {
          ScrollView(.horizontal) {
            HStack {
              ConditionalPhotoView(component: component)
            }
            .scrollTargetLayout()
          }
          .scrollTargetBehavior(.viewAligned)
          Text(component.name)
            .font(.title)
          Text(component.brand)
            .font(.title2)
          Text(component.description)
            .font(.body)
          HStack {
            Text("Chipset: \(component.chipset)")
            Spacer()
            Text("Socket: \(component.socket)")
          }
          HStack {
            Text("DDR Class: \(component.memorytype)")
            Spacer()
            Text("DIMMs: \(component.memoryslots)")
          }
          Text(component.pcieslots)
          HStack {
            Text("Form Factor: \(component.formfactor)")
            Spacer()
            Text("Sata Pports: \(component.sataports)")
          }
          Text("M.2 Slots: \(component.m2slots)")
          ConditionalLinkView(component: component)
          Button {
            // TODO: Add Component to selected components
          } label: {
            Text("Add To Build")
          }
          .buttonStyle(.borderedProminent)
          .padding(.top, 40)
          
        }
        .padding([.leading, .trailing])
      }
    }
}

#Preview {
  MotherboardDetailView(component: MockData().mockMotherboard)
}
