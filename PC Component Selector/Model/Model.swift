//
//  Model.swift
//  PC Component Selector
//
//  Created by Andrew Paterson on 7/14/24.
//

import Foundation

public class PCComponent: Codable, Identifiable {
  
  public var id: Int
  public var title: String
  public var brand: String
  public var description: String
  public var photourls: [String]
  public var microcenterlink: String
  public var amazonlink: String
  public var newegglink: String
  public var bestbuylink: String

  init(id: Int,
       title: String,
       brand: String,
       description: String,
       photourls: [String],
       microcenterlink: String,
       amazonlink: String,
       newegglink: String,
       bestbuylink: String) {
    self.id = id
    self.title = title
    self.brand = brand
    self.description = description
    self.photourls = photourls
    self.microcenterlink = microcenterlink
    self.amazonlink = amazonlink
    self.newegglink = newegglink
    self.bestbuylink = bestbuylink
  }
  
  public required init(from decoder: Decoder) throws {
    let container =   try decoder.container(keyedBy: CodingKeys.self)
    id =              try container.decode(Int.self, forKey: .id)
    title =           try container.decode(String.self, forKey: .title)
    brand =           try container.decode(String.self, forKey: .brand)
    description =     try container.decode(String.self, forKey: .description)
    photourls =       try container.decode([String].self, forKey: .photourls)
    microcenterlink = try container.decode(String.self, forKey: .microcenterlink)
    amazonlink =      try container.decode(String.self, forKey: .amazonlink)
    newegglink =      try container.decode(String.self, forKey: .newegglink)
    bestbuylink =     try container.decode(String.self, forKey: .bestbuylink)
  }

  
}

class RAM: PCComponent {
  
  public var dims: String
  public var speed: String
  public var ddrclass: String
  public var capacity: String
  public var caslatency: String
  public var timing: String
  public var rgb: String
  public var model: String
  public var voltage: String
  public var ecc: String
  public var color: String
  public var bufferedorregistered: String
  public var heatspreader: String
  
  enum CodingKeys: String, CodingKey {
    
    case dims
    case speed
    case ddrclass
    case capacity
    case caslatency
    case timing
    case rgb
    case model
    case voltage
    case ecc
    case color
    case bufferedorregistered
    case heatspreader
    
  }
  
  init(id: Int,
       title: String,
       brand: String,
       description: String,
       photourls: [String],
       microcenterlink: String,
       amazonlink: String,
       newegglink: String,
       bestbuylink: String,
       dims: String,
       speed: String,
       ddrclass: String,
       capacity: String,
       caslatency: String,
       timing: String,
       rgb: String,
       model: String,
       voltage: String,
       ecc: String,
       color: String,
       bufferedorregistered: String,
       heatspreader: String) {
    
    self.dims = dims
    self.speed = speed
    self.ddrclass = ddrclass
    self.capacity = capacity
    self.caslatency = caslatency
    self.timing = timing
    self.rgb = rgb
    self.model = model
    self.voltage = voltage
    self.ecc = ecc
    self.color = color
    self.bufferedorregistered = bufferedorregistered
    self.heatspreader = heatspreader
    super.init(id: id,
               title: title,
               brand: brand,
               description: description,
               photourls: photourls,
               microcenterlink: microcenterlink,
               amazonlink: amazonlink,
               newegglink: newegglink,
               bestbuylink: bestbuylink)
    
  }
  
  required init(from decoder: Decoder) throws {
    
    let container =         try decoder.container(keyedBy: CodingKeys.self)
    dims =                  try container.decode(String.self, forKey: .dims)
    speed =                 try container.decode(String.self, forKey: .speed)
    ddrclass =              try container.decode(String.self, forKey: .ddrclass)
    capacity =              try container.decode(String.self, forKey: .capacity)
    caslatency =            try container.decode(String.self, forKey: .caslatency)
    timing =                try container.decode(String.self, forKey: .timing)
    rgb =                   try container.decode(String.self, forKey: .rgb)
    model =                 try container.decode(String.self, forKey: .model)
    voltage =               try container.decode(String.self, forKey: .voltage)
    ecc =                   try container.decode(String.self, forKey: .ecc)
    color =                 try container.decode(String.self, forKey: .color)
    bufferedorregistered =  try container.decode(String.self, forKey: .bufferedorregistered)
    heatspreader =          try container.decode(String.self, forKey: .heatspreader)
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



