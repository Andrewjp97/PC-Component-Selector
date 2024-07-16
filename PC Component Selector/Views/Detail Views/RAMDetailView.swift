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
          ConditionalComponentSpecification(componentSpecificationTitle: "DIMMs",
                                            componentSpecification: component.dims)
          ConditionalComponentSpecification(componentSpecificationTitle: "Speed",
                                            componentSpecification: component.speed)
          ConditionalComponentSpecification(componentSpecificationTitle: "DDR Class",
                                            componentSpecification: component.ddrclass)
          ConditionalComponentSpecification(componentSpecificationTitle: "Capacity",
                                            componentSpecification: component.capacity)
          ConditionalComponentSpecification(componentSpecificationTitle: "CAS Latency",
                                            componentSpecification: component.caslatency)
          ConditionalComponentSpecification(componentSpecificationTitle: "Timing",
                                            componentSpecification: component.timing)
          ConditionalComponentSpecification(componentSpecificationTitle: "Heat Spreader",
                                            componentSpecification: component.heatspreader)
          ConditionalComponentSpecification(componentSpecificationTitle: "Voltage",
                                            componentSpecification: component.voltage)
          ConditionalComponentSpecification(componentSpecificationTitle: "ECC",
                                            componentSpecification: component.ecc)
          ConditionalComponentSpecification(componentSpecificationTitle: "Color",
                                            componentSpecification: component.color)
          ConditionalComponentSpecification(componentSpecificationTitle: "RGB",
                                            componentSpecification: component.rgb)
          ConditionalComponentSpecification(componentSpecificationTitle: "Buffered or Registered",
                                            componentSpecification: component.bufferedorregistered)
          ConditionalComponentSpecification(componentSpecificationTitle: "Model",
                                            componentSpecification: component.model)
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
