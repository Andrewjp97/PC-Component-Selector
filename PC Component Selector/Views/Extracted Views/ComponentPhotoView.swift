//
//  ComponentPhotoView.swift
//  PC Component Selector
//
//  Created by Andrew Paterson on 7/14/24.
//

import SwiftUI

struct ComponentPhotoView: View {
  var component: PCComponent
  var body: some View {
    ForEach(component.photourls, id: \.self) { photourl in
      AsyncImage(url: URL(string: photourl)) { image in
        image.image?
          .resizable()
          .aspectRatio(contentMode: .fit)
      }
      .frame(height: 300)
    }
    
  }
}



