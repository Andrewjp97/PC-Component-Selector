//
//  Model.swift
//  PC Component Selector
//
//  Created by Andrew Paterson on 7/14/24.
//

import Foundation

public class PCComponent: Codable, Identifiable {
  
  public var id: Int
  public var name: String
  public var brand: String
  public var description: String
  public var photourl: String
  public var microcenterlink: String
  public var amazonlink: String
  public var newegglink: String
  public var bestbuylink: String
  
  public init(id: Int,
       name: String,
       brand: String,
       description: String,
       photourl: String,
       microcenterlink: String,
       amazonlink: String,
       newegglink: String,
       bestbuylink: String) {
    self.id = id
    self.name = name
    self.brand = brand
    self.description = description
    self.photourl = photourl
    self.microcenterlink = microcenterlink
    self.amazonlink = amazonlink
    self.newegglink = newegglink
    self.bestbuylink = bestbuylink
  }
  
  required public init(from decoder: any Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.id = try container.decode(Int.self, forKey: .id)
    self.name = try container.decode(String.self, forKey: .name)
    self.brand = try container.decode(String.self, forKey: .brand)
    self.description = try container.decode(String.self, forKey: .description)
    self.photourl = try container.decode(String.self, forKey: .photourl)
    self.microcenterlink = try container.decode(String.self, forKey: .microcenterlink)
    self.amazonlink = try container.decode(String.self, forKey: .amazonlink)
    self.newegglink = try container.decode(String.self, forKey: .newegglink)
    self.bestbuylink = try container.decode(String.self, forKey: .bestbuylink)
  }
  
}

public class RAM: PCComponent {
  
  public var dims: String
  public var speed: String
  public var ddrclass: String
  public var capacity: String
  
  enum CodingKeys: String, CodingKey {
    case dims
    case speed
    case ddrclass
    case capacity
  }
  
  init(id: Int,
       name: String,
       brand: String,
       description: String,
       photourl: String,
       microcenterlink: String,
       amazonlink: String,
       newegglink: String,
       bestbuylink: String,
       dims: String,
       speed: String,
       ddrclass: String,
       capacity: String) {
    self.dims = dims
    self.speed = speed
    self.ddrclass = ddrclass
    self.capacity = capacity
    super.init(id: id, name: name, brand: brand, description: description, photourl: photourl, microcenterlink: microcenterlink, amazonlink: amazonlink, newegglink: newegglink, bestbuylink: bestbuylink)
  }
  
  required init(from decoder: any Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.dims = try container.decode(String.self, forKey: .dims)
    self.speed = try container.decode(String.self, forKey: .speed)
    self.ddrclass = try container.decode(String.self, forKey: .ddrclass)
    self.capacity = try container.decode(String.self, forKey: .capacity)
    try super.init(from: decoder)
  }
  
}

class Motherboard: PCComponent {
  
}

class CPU: PCComponent {
  
}

class GPU: PCComponent {
  
}

class Storage: PCComponent {
  
}

class PSU: PCComponent {
  
}

class Case: PCComponent {
  
}

class Cooler: PCComponent {
  
}

class Monitor: PCComponent {
  
}

class Keyboard: PCComponent {
  
}

class Mouse: PCComponent {
  
}

class Headset: PCComponent {
  
}

class Microphone: PCComponent {
  
}

class Speaker: PCComponent {
  
}

class Webcam: PCComponent {
  
}

class CaptureCard: PCComponent {
  
}


