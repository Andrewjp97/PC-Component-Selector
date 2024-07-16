//
//  ConditionalComponentSpecification.swift
//  PC Component Selector
//
//  Created by Andrew Paterson on 7/16/24.
//

import SwiftUI

struct ConditionalComponentSpecification: View {
  var title: String
  var specification: String
    var body: some View {
      if !specification.isEmpty {
        HStack {
          Text(title)
            .bold()
          Spacer()
          Text(specification)
        }
        .padding([.leading, .trailing])
      }
      else {
        EmptyView()
      }
    }
}

#Preview {
  ConditionalComponentSpecification(title: "Test",
                                    specification: "Test Spec")
}
