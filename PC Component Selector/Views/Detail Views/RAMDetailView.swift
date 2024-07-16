//
//  RAMDetailView.swift
//  PC Component Selector
//
//  Created by Andrew Paterson on 7/14/24.
//

import SwiftUI

struct RAMDetailView: View {
  var component: RAM
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
          ConditionalComponentSpecification(title: "DIMMs",         specification: component.dims)
          ConditionalComponentSpecification(title: "Speed",         specification: component.speed)
          ConditionalComponentSpecification(title: "DDR Class",     specification: component.ddrclass)
          ConditionalComponentSpecification(title: "Capacity",      specification: component.capacity)
          ConditionalComponentSpecification(title: "CAS Latency",   specification: component.caslatency)
          ConditionalComponentSpecification(title: "Timing",        specification: component.timing)
          ConditionalComponentSpecification(title: "Heat Spreader", specification: component.heatspreader)
          ConditionalComponentSpecification(title: "Voltage",       specification: component.voltage)
          ConditionalComponentSpecification(title: "ECC",           specification: component.ecc)
          ConditionalComponentSpecification(title: "Color",         specification: component.color)
          ConditionalComponentSpecification(title: "RGB",           specification: component.rgb)
          ConditionalComponentSpecification(title: "Buffered or Registered", specification: component.bufferedorregistered)
          ConditionalComponentSpecification(title: "Model",         specification: component.model)
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
  RAMDetailView(component: MockData().mockRam)
}
