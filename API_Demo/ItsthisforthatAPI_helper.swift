//
//  ItsthisforthatAPI_helper.swift
//  API_Demo
//
//  Created by Gaurang Naik on 2023-05-24.
//

import Foundation

class ItsthisforthatAPI_Helper {
    private static let urlString = "https://itsthisforthat.com/api.php?json"
    
    private static func createURL() -> URL?{
        let tempURLString = urlString
       
        guard
            let url = URL(string: tempURLString)
        else { return nil }
        
        return url
        
    }
    
    public static func fetch() async -> Any {
        let itsthisforthatURL = createURL()!
        let (data, _) = try! await URLSession.shared.data(from: itsthisforthatURL)
        
        let jsonObject = try! JSONSerialization.jsonObject(with: data)
        return jsonObject
    }
}
