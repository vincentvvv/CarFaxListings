//
//  EndPointType.swift
//  CarFax
//
//  Created by Vincent Vuong on 9/30/20.
//  Copyright © 2020 Vincent Vuong. All rights reserved.
//

import Foundation

protocol EndPointType {
    var url: URL? { get }
}

public enum CardFaxEndPoint: EndPointType {
    case cars
    case image(url: String)

    var url: URL? {
        switch self {
        case .cars: return URL(string: "https://carfax-for-consumers.firebaseio.com/assignment.json")
        case .image(let url): return URL(string: url)
        }
    }
}