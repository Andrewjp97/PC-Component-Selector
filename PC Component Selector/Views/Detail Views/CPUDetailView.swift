//
//  CPUDetailView.swift
//  PC Component Selector
//
//  Created by Andrew Paterson on 7/14/24.
//

import SwiftUI

struct CPUDetailView: View {
  var component: CPU
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
        ConditionalComponentSpecification(title: "Model",                   specification: component.model)
        ConditionalComponentSpecification(title: "Socket",                  specification: component.socket)
        ConditionalComponentSpecification(title: "Cores",                   specification: component.cores)
        ConditionalComponentSpecification(title: "Threads",                 specification: component.threads)
        ConditionalComponentSpecification(title: "Base Clock",              specification: component.baseclock)
        ConditionalComponentSpecification(title: "Boost Clock",             specification: component.boostclock)
        ConditionalComponentSpecification(title: "L1 Cache",                specification: component.l1cache)
        ConditionalComponentSpecification(title: "L2 Cache",                specification: component.l2cache)
        ConditionalComponentSpecification(title: "L3 Cache",                specification: component.l3cache)
        ConditionalComponentSpecification(title: "Manufacturing Process",   specification: component.manufacturingprocess)
        ConditionalComponentSpecification(title: "Memory Support",          specification: component.memorysupport)
        ConditionalComponentSpecification(title: "ECC Suppport",            specification: component.eccsupport)
        ConditionalComponentSpecification(title: "Integrated Graphics",     specification: component.integratedgraphics)
        ConditionalComponentSpecification(title: "Memory Channels",         specification: component.memorychannels)
        ConditionalComponentSpecification(title: "Graphics Base Frequency", specification: component.graphicsbasefrequency)
        ConditionalComponentSpecification(title: "Graphics Boost Frequency",
                                          specification: component.graphicsboostfrequency)
        ConditionalComponentSpecification(title: "TDP",                     specification: component.tdp)
        ConditionalComponentSpecification(title: "Thermal Solution",        specification: component.thermalsolution)
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
  CPUDetailView(component: MockData().mockCPU)
}
