//
//  FakeStoreAPI_Helper.swift
//  API_Demo
//
//  Created by Gaurang Naik on 2023-05-24.
//

import Foundation

class FakeStoreAPI_Helper {
    private static let urlString = "https://fakestoreapi.com/products/1"
    
    private static func createURL() -> URL?{
        let tempURLString = urlString
       
        guard
            let url = URL(string: tempURLString)
        else { return nil }
        
        return url
        
    }
    
    public static func fetch() async -> Any {
        let fakeStoreURL = createURL()!
        let (data, _) = try! await URLSession.shared.data(from: fakeStoreURL)
        
        let jsonObject = try! JSONSerialization.jsonObject(with: data)
        return jsonObject
    }
}

