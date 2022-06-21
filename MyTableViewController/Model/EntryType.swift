//
//  EntryType.swift
//  MyTableViewController
//
//  Created by Lais Godinho on 15/06/22.
//

import UIKit
import Foundation

enum EntryType: CaseIterable, Identifiable, Codable {
  var id: Self { self }
  
  case blackHole
  case constellation
  case galaxy
  case gasGiant
  case redPlanet
  case meteor
  case satellite
  case iceGiant
  case ringedPlanet
  case star
  case verticalRingedPlanet
  case orangePlanet
  
  var image: UIImage {
    switch self {
    case .blackHole:
      return UIImage(named: "black-hole")!
    case .constellation:
      return UIImage(named: "constellation")!
    case .galaxy:
      return UIImage(named: "galaxy")!
    case .gasGiant:
      return UIImage(named: "jupiter")!
    case .redPlanet:
      return UIImage(named: "mars")!
    case .meteor:
      return UIImage(named: "meteor")!
    case .satellite:
      return UIImage(named: "moon")!
    case .iceGiant:
      return UIImage(named: "neptune")!
    case .ringedPlanet:
      return UIImage(named: "saturn")!
    case .star:
      return UIImage(named: "sun")!
    case.verticalRingedPlanet:
      return UIImage(named: "uranus")!
    case .orangePlanet:
      return UIImage(named: "venus")!
    }
    
  }
  
  var description: String {
    switch self {
    case .blackHole:
      return "Black Hole"
    case .constellation:
      return "Constellation"
    case .galaxy:
      return "Galaxy"
    case .gasGiant:
      return "Gas Giant"
    case .redPlanet:
      return "Red Planet"
    case .meteor:
      return "Meteor"
    case .satellite:
      return "Satellite"
    case .iceGiant:
      return "Ice Giant"
    case .ringedPlanet:
      return "Ringed Planet"
    case .star:
      return "Star"
    case.verticalRingedPlanet:
      return "Vertical Ringed Planet"
    case .orangePlanet:
      return "OrangePlanet"
    }
  }
}

