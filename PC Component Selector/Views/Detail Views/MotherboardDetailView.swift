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
              ComponentPhotoView(component: component)
            }
            .scrollTargetLayout()
          }
          .scrollTargetBehavior(.viewAligned)
          Text(component.title)
            .font(.title)
          Text(component.brand)
            .font(.title2)
          Text(component.description)
            .font(.body)
          Text("Specifications")
            .font(.title3)
          ConditionalComponentSpecification(title: "Platform",              specification: component.platform)
          ConditionalComponentSpecification(title: "Socket",                specification: component.socket)
          ConditionalComponentSpecification(title: "Chipset",               specification: component.chipset)
          ConditionalComponentSpecification(title: "Form Factor",           specification: component.formfactor)
          ConditionalComponentSpecification(title: "Dimensions",            specification: component.dimensions)
          ConditionalComponentSpecification(title: "Model",                 specification: component.model)
          ConditionalComponentSpecification(title: "DIMMs",                 specification: component.dimms)
          ConditionalComponentSpecification(title: "Memory Support",        specification: component.memorysupport)
          ConditionalComponentSpecification(title: "Max Supported Memory",  specification: component.maxsupportedmemory)
          ConditionalComponentSpecification(title: "Rear IO",               specification: component.reario)
          ConditionalComponentSpecification(title: "PCIE",                  specification: component.pcie)
          ConditionalComponentSpecification(title: "SATA Ports",            specification: component.sataports)
          ConditionalComponentSpecification(title: "M.2 Slots",             specification: component.m2ports)
          ConditionalComponentSpecification(title: "SATA Raid",             specification: component.sataraid)
          ConditionalComponentSpecification(title: "LAN",                   specification: component.lan)
          ConditionalComponentSpecification(title: "WIFI",                  specification: component.wifi)
          ConditionalComponentSpecification(title: "Bluetooth",             specification: component.bluetooth)
          ConditionalComponentSpecification(title: "Audio Chipset",         specification: component.audio)
          ConditionalComponentSpecification(title: "Other Connectors",      specification: component.otherconnectors)
          ConditionalComponentSpecification(title: "Power Connectors",      specification: component.powerconnector)
          ConditionalComponentSpecification(title: "Internal USB",          specification: component.internalusb)
          Text("Available For Purchase At:")
            .font(.title3)
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
