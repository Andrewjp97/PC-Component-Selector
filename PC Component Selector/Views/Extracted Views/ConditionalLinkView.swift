//
//  ConditionalLinkView.swift
//  PC Component Selector
//
//  Created by Andrew Paterson on 7/14/24.
//

import SwiftUI

struct ConditionalLinkView: View {
  var component: PCComponent
    var body: some View {
      if !component.microcenterlink.isEmpty {
        Link("Microcenter", destination: URL(string: component.microcenterlink)!)
      }
      if !component.amazonlink.isEmpty {
        Link("Amazon", destination: URL(string: component.amazonlink)!)
      }
      if !component.newegglink.isEmpty {
        Link("Newegg", destination: URL(string: component.newegglink)!)
      }
      if !component.bestbuylink.isEmpty {
        Link("Best Buy", destination: URL(string: component.bestbuylink)!)
      }
    }
}

#Preview {
  ConditionalLinkView(component: MockData().mockComponent)
}
