//
//  FakerAPI_Helper.swift
//  API_Demo
//
//  Created by Gaurang Naik on 2023-05-24.
//

import Foundation
class FakerAPI_Helper {
    private static let urlString = "https://fakerapi.it/api/v1/persons?_quantity=1&_gender=male&_birthday_start=2005-01-01"
    
    private static func createURL() -> URL?{
        let tempURLString = urlString
        
        guard
            let url = URL(string: tempURLString)
        else { return nil }
        
        return url
        
    }
    
    public static func fetch() async -> Any {
        let fakerURL = createURL()!
        let (data, _) = try! await URLSession.shared.data(from: fakerURL)
        
        let jsonObject = try! JSONSerialization.jsonObject(with: data)
        return jsonObject
    }
}
