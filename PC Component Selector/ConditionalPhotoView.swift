//
//  ConditionalPhotoView.swift
//  PC Component Selector
//
//  Created by Andrew Paterson on 7/14/24.
//

import SwiftUI

struct ConditionalPhotoView: View {
  var component: PCComponent
    var body: some View {
      AsyncImage(url: URL(string: component.photourl1)) { image in
        image.image?
          .resizable()
          .aspectRatio(contentMode: .fit)
      }
      .frame(height: 300)
      if !component.photourl2.isEmpty {
        AsyncImage(url: URL(string: component.photourl2)) { image in
          image.image?
            .resizable()
            .aspectRatio(contentMode: .fit)
        }
        .frame(height: 300)
      }
      if !component.photourl3.isEmpty {
        AsyncImage(url: URL(string: component.photourl3)) { image in
          image.image?
            .resizable()
            .aspectRatio(contentMode: .fit)
        }
        .frame(height: 300)
      }
      if !component.photourl4.isEmpty {
        AsyncImage(url: URL(string: component.photourl4)) { image in
          image.image?
            .resizable()
            .aspectRatio(contentMode: .fit)
        }
        .frame(height: 300)
      }
      if !component.photourl5.isEmpty {
        AsyncImage(url: URL(string: component.photourl5)) { image in
          image.image?
            .resizable()
            .aspectRatio(contentMode: .fit)
        }
        .frame(height: 300)
      }
    }
}


