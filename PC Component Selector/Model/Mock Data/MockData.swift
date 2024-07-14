//
//  MockData.swift
//  PC Component Selector
//
//  Created by Andrew Paterson on 7/14/24.
//

import Foundation

struct MockData {
  
  public let mockComponent = PCComponent(id: 1,
                                         name: "Example PC Component",
                                         brand: "PatersonTech",
                                         description: "This is an example PC component. It is a placeholder for the real thing.",
                                         photourl1: "http://patersontech.duckdns.org:8043/images/00001.jpeg",
                                         photourl2: "http://patersontech.duckdns.org:8043/images/00002.jpeg",
                                         photourl3: "http://patersontech.duckdns.org:8043/images/00003.jpeg",
                                         photourl4: "",
                                         photourl5: "",
                                         microcenterlink: "test",
                                         amazonlink: "test",
                                         newegglink: "test",
                                         bestbuylink: "test")
  
  public let mockRam = RAM(id: 1,
                    name: "G.Skill Trident Z5 Neo RGB 64GB (2 x 32GB) DDR5-6000 - Black",
                    brand: "G.Skill",
                    description: "Trident Z5 Neo RGB DDR5 memory is designed for ultra-high overclocked performance on DDR5-enabled AMD platforms. Featuring AMD EXPO overclocking technology for easy memory overclocking on supported AMD platforms, the Trident Z5 Neo RGB series is the ideal choice for building high-performance systems.",
                    photourl1: "http://patersontech.duckdns.org:8043/images/00001.jpeg",
                    photourl2: "http://patersontech.duckdns.org:8043/images/00002.jpeg",
                    photourl3: "http://patersontech.duckdns.org:8043/images/00003.jpeg",
                    photourl4: "",
                    photourl5: "",
                    microcenterlink: "https://www.microcenter.com/product/664697/gskill-trident-z5-neo-rgb-64gb-(2-x-32gb)-ddr5-6000-pc5-48000-cl30-dual-channel-desktop-memory-kit-f5-6000j3040g32gx2-tz5nr-black",
                    amazonlink: "https://a.co/d/0slkfW9",
                    newegglink: "https://www.newegg.com/g-skill-64gb/p/N82E16820374445",
                    bestbuylink: "",
                    dims: "2",
                    speed: "6000 MT/S",
                    ddrclass: "DDR5",
                    capacity: "64GB (32 X 2)")
  
  public let mockMotherboard = Motherboard(id: 1,
                                    name: "ASUS ROG Crosshair VIII Dark Hero",
                                    brand: "ASUS",
                                    description: "Upgraded power delivery, passive chipset cooling, and stealthy aesthetics allow the Crosshair VIII Dark Hero to strike from the shadows and form a menacing duo with AMD Zen 3.",
                                    photourl1: "http://patersontech.duckdns.org:8043/images/00009.jpeg",
                                    photourl2: "http://patersontech.duckdns.org:8043/images/0000A.jpeg",
                                    photourl3: "http://patersontech.duckdns.org:8043/images/0000B.jpeg",
                                    photourl4: "http://patersontech.duckdns.org:8043/images/0000C.jpeg",
                                    photourl5: "http://patersontech.duckdns.org:8043/images/0000D.jpeg",
                                    microcenterlink: "",
                                    amazonlink: "https://www.amazon.com/ASUS-Crosshair-VIII-Dark-Hero/dp/B08MTKJ6HM/ref=sr_1_1?crid=1HRZTO6J5WLPL&dib=eyJ2IjoiMSJ9.X0kZjcVNEUJq8ZnLHzaonTvH4XEy6Bhd2xoIzKgWQTXd6i9FakpwScwsWaQnhH02Xh15z2nsWHp_cBbwyPxpFyFFwKWY3u-3F6M2nNqiTFZB9qLcyUT2NjFLDL77Z4XqfzKMSSA3o22TtmNp3K9iyzimchN4WyqFc-OFXG1chvcunjj0S1kkmwBtEseMO506QlymA0y3VFPkgvLD3vYxmEiy8sb4D6gaoW7AI2WmHZM.mAtTmyJDyfxFWfVAMS8gUhknpJ9FJGPmwVfwruA3JXg&dib_tag=se&keywords=ASUS+ROG+Crosshair+VIII+Dark+Hero+AM4+AMD+X570S+SATA+6Gb%2Fs+ATX+AMD+Motherboard&qid=1720975680&sprefix=asus+rog+crosshair+viii+dark+hero+am4+amd+x570s+sata+6gb%2Fs+atx+amd+motherboard%2Caps%2C169&sr=8-1",
                                    newegglink: "https://www.newegg.com/asus-rog-crosshair-viii-dark-hero/p/N82E16813119362",
                                    bestbuylink: "",
                                    socket: "AM4",
                                    formfactor: "ATX",
                                    chipset: "X570",
                                    memorytype: "DDR4",
                                    memoryslots: "4",
                                    pcieslots: "1x16 or 2x8 full length slots, 1x4 full length slot, 1x1",
                                    sataports: "8",
                                    m2slots: "2")
  
  public let mockCPU = CPU(id: 1,
                           name: "AMD Ryzen 9 5950X",
                           brand: "AMD",
                           description: "The AMD Ryzen 9 5950X is a 16-core, 32-thread processor with a base clock of 3.4 GHz and a max boost clock of 4.9 GHz. It is built on the 7nm Zen 3 architecture and is compatible with AM4 motherboards. The 5950X has a TDP of 105W.",
                           photourl1: "http://patersontech.duckdns.org:8043/images/0000J.jpeg",
                           photourl2: "http://patersontech.duckdns.org:8043/images/0000K.jpeg",
                           photourl3: "http://patersontech.duckdns.org:8043/images/0000L.jpeg",
                           photourl4: "",
                           photourl5: "",
                           microcenterlink: "https://www.microcenter.com/product/674524/amd-ryzen-9-5950x-vermeer-34ghz-16-core-am4-boxed-processor-heatsink-not-included",
                           amazonlink: "https://a.co/d/4DcAE1P",
                           newegglink: "https://newegg.io/nca211bd3a",
                           bestbuylink: "https://www.bestbuy.com/site/amd-ryzen-9-5950x-4th-gen-16-core-32-threads-unlocked-desktop-processor-without-cooler-black/6438941.p?skuId=6438941",
                           socket: "AM4",
                           cores: "16",
                           threads: "32",
                           baseclock: "3.4 GHz",
                           boostclock: "4.9 GHz",
                           tdp: "105W",
                           integratedgraphics: "None")
                           
  
}
