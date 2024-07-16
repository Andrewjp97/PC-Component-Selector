//
//  ConditionalComponentSpecification.swift
//  PC Component Selector
//
//  Created by Andrew Paterson on 7/16/24.
//

import SwiftUI

struct ConditionalComponentSpecification: View {
  var componentSpecificationTitle: String
  var componentSpecification: String
    var body: some View {
      if !componentSpecification.isEmpty {
        HStack {
          Text(componentSpecificationTitle)
            .bold()
          Spacer()
          Text(componentSpecification)
        }
        .padding([.leading, .trailing])
      }
      else {
        EmptyView()
      }
    }
}

#Preview {
  ConditionalComponentSpecification(componentSpecificationTitle: "Test",
                                    componentSpecification: "Test Spec")
}
