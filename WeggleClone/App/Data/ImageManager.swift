//
//  ImageManager.swift
//  WeggleClone
//
//  Created by YEONGJIN JANG on 2022/12/31.
//

import Foundation

final class ImageManager: ObservableObject {
    
    func requestImages(_ breed: String) async throws -> Dog? {
        //TODO: - API Key 보안처리
        let urlString = "https://dog.ceo/api/breed/\(breed)/images/random"
        guard let url = URL(string: urlString) else { fatalError() }
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        do {
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            return handleResponse(data: data, response: response)
        } catch {
            fatalError()
        }
    }
    
    private func handleResponse(data: Data, response: URLResponse) -> Dog? {
        guard let response = response as? HTTPURLResponse,
              200..<300 ~= response.statusCode else {
            return nil
        }
        if let response = try? JSONDecoder().decode(DogDTO.self, from: data) {
            return response.convertTo()
        } else {
            return nil
        }
    }
    
}
