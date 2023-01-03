//
//  DogDTO.swift
//  WeggleClone
//
//  Created by YEONGJIN JANG on 2022/12/31.
//

import Foundation

struct DogDTO: Codable {
    let url: String
    let status: String
    
    private enum CodingKeys: String, CodingKey {
        case url = "message"
        case status
    }
}

extension DogDTO {
    func convertTo() -> Dog {
        return Dog(url: URL(string: self.url))
    }
}


